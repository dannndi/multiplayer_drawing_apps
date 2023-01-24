import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_skeleton/feature/draw/model/answer_model.dart';
import 'package:flutter_skeleton/feature/draw/model/drawing_point.dart';
import 'package:flutter_skeleton/feature/draw/model/game_room.dart';
import 'package:flutter_skeleton/main_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'drawing_state.dart';
part 'drawing_cubit.freezed.dart';

class DrawingCubit extends Cubit<DrawingState> {
  final String id;
  final String username;

  DrawingCubit({
    required this.id,
    required this.username,
  }) : super(const DrawingState()) {
    listentoWebSocket();
  }

  /// Websocket Channel
  WebSocketChannel? channel;

  /// drawing line that are being drawed
  DrawingPoint? currentDrawingPoint;

  void onPanStart({required Offset offset, bool shouldSendWebsocket = true}) {
    currentDrawingPoint = DrawingPoint(
      id: DateTime.now().millisecondsSinceEpoch,
      offsets: [
        DrawingOffset(
          dx: offset.dx,
          dy: offset.dy,
        ),
      ],
    );

    final latestDrawingPoints = List.of(state.drawingPoints)
      ..add(currentDrawingPoint!);
    emit(state.copyWith(
      drawingPoints: latestDrawingPoints,
      historyDrawingPoints: latestDrawingPoints,
    ));

    if (shouldSendWebsocket) {
      channel?.sink.add(
        jsonEncode({
          "method": "drawing",
          "type": "start",
          "offset": DrawingOffset(
            dx: offset.dx,
            dy: offset.dy,
          ).toJson(),
        }),
      );
    }
  }

  void onPanUpdate({
    required Offset offset,
    bool shouldSendWebsocket = true,
  }) {
    if (currentDrawingPoint == null) return;

    currentDrawingPoint = currentDrawingPoint?.copyWith(
      offsets: List.from(currentDrawingPoint!.offsets)
        ..add(
          DrawingOffset(
            dx: offset.dx,
            dy: offset.dy,
          ),
        ),
    );
    final latestDrawingPoints = List.of(state.drawingPoints)
      ..last = currentDrawingPoint!;
    emit(state.copyWith(
      drawingPoints: latestDrawingPoints,
      historyDrawingPoints: latestDrawingPoints,
    ));

    if (shouldSendWebsocket) {
      channel?.sink.add(
        jsonEncode({
          "method": "drawing",
          "type": "update",
          "offset": DrawingOffset(
            dx: offset.dx,
            dy: offset.dy,
          ).toJson(),
        }),
      );
    }
  }

  void onPanEnd({bool shouldSendWebsocket = true}) {
    currentDrawingPoint = null;

    if (shouldSendWebsocket) {
      channel?.sink.add(
        jsonEncode({
          "method": "drawing",
          "type": "end",
        }),
      );
    }
  }

  void undoDrawing({
    bool shouldSendWebsocket = true,
  }) {
    if (state.drawingPoints.isNotEmpty &&
        state.historyDrawingPoints.isNotEmpty) {
      final latestDrawingPoints = List.of(state.drawingPoints)..removeLast();
      emit(state.copyWith(drawingPoints: latestDrawingPoints));

      if (shouldSendWebsocket) {
        channel?.sink.add(
          jsonEncode({
            "method": "drawing",
            "type": "undo",
          }),
        );
      }
    }
  }

  void redoDrawing({
    bool shouldSendWebsocket = true,
  }) {
    if (state.drawingPoints.length < state.historyDrawingPoints.length) {
      final index = state.drawingPoints.length;
      final latestDrawingPoints = List.of(state.drawingPoints)
        ..add(state.historyDrawingPoints[index]);

      emit(state.copyWith(drawingPoints: latestDrawingPoints));

      if (shouldSendWebsocket) {
        channel?.sink.add(
          jsonEncode({
            "method": "drawing",
            "type": "redo",
          }),
        );
      }
    }
  }

  void playerTicker(int duration) {
    try {
      channel?.sink.add(jsonEncode({
        "method": "ticker",
        "duration": duration,
      }));
    } catch (e) {
      debugPrint("ERROR : $e");
    }
  }

  void playerTimeout() {
    try {
      channel?.sink.add(jsonEncode({
        "method": "timeout",
      }));
    } catch (e) {
      debugPrint("ERROR : $e");
    }
  }

  /// Websocket

  void listentoWebSocket() {
    try {
      final wsUrl = Uri.parse(
        '${MainModule.wsUrl}game/$id?username=$username',
      );
      channel = WebSocketChannel.connect(wsUrl);

      channel?.sink.add(jsonEncode({
        "method": "join",
      }));

      channel?.stream.listen((message) {
        final jsonResponse = jsonDecode(message);

        if (jsonResponse["method"] == "join") {
          final gameRoom = GameRoom.fromJson(jsonResponse["game_room"]);
          emit(state.copyWith(
            gameRoom: gameRoom,
            drawingPoints: gameRoom.currentDrawingPoint,
            historyDrawingPoints: gameRoom.currentDrawingPoint,
          ));
        }

        if (jsonResponse["method"] == "answer") {
          final gameRoom = GameRoom.fromJson(jsonResponse["game_room"]);
          emit(
            state.copyWith(
              gameRoom: gameRoom,
              answers: List.of(state.answers)
                ..insert(
                    0,
                    AnswerModel(
                      username: jsonResponse["username"],
                      answer: jsonResponse["answer"],
                      isCorrect: jsonResponse["isCorrect"],
                    )),
            ),
          );

          if (gameRoom.currentDrawingPoint.isEmpty) {
            emit(state.copyWith(
              drawingPoints: [],
              historyDrawingPoints: [],
            ));
          }
        }

        if (jsonResponse["method"] == "ticker") {
          final gameRoom = GameRoom.fromJson(jsonResponse["game_room"]);
          emit(state.copyWith(
            gameRoom: gameRoom,
          ));
        }

        if (jsonResponse["method"] == "timeout") {
          final gameRoom = GameRoom.fromJson(jsonResponse["game_room"]);
          emit(state.copyWith(
            gameRoom: gameRoom,
            drawingPoints: [],
            historyDrawingPoints: [],
          ));
        }

        if (jsonResponse["method"] == "disconnect") {
          final gameRoom = GameRoom.fromJson(jsonResponse["game_room"]);
          emit(state.copyWith(
            gameRoom: gameRoom,
            drawingPoints: gameRoom.currentDrawingPoint,
            historyDrawingPoints: gameRoom.currentDrawingPoint,
          ));
        }

        if (jsonResponse["method"] == "drawing") {
          if (jsonResponse["type"] == "start") {
            final drawOffset = DrawingOffset.fromJson(jsonResponse["offset"]);
            onPanStart(
              offset: Offset(drawOffset.dx, drawOffset.dy),
              shouldSendWebsocket: false,
            );
          }

          if (jsonResponse["type"] == "update") {
            final drawOffset = DrawingOffset.fromJson(jsonResponse["offset"]);
            onPanUpdate(
              offset: Offset(drawOffset.dx, drawOffset.dy),
              shouldSendWebsocket: false,
            );
          }

          if (jsonResponse["type"] == "end") {
            onPanEnd(
              shouldSendWebsocket: false,
            );
          }

          if (jsonResponse["type"] == "undo") {
            undoDrawing(shouldSendWebsocket: false);
          }

          if (jsonResponse["type"] == "redo") {
            redoDrawing(shouldSendWebsocket: false);
          }
        }
      });
    } catch (e) {
      debugPrint("ERROR : $e");
    }
  }

  void sendAnswer(String value) {
    try {
      channel?.sink.add(jsonEncode({
        "method": "answer",
        "answer": value,
      }));
    } catch (e) {
      debugPrint("ERROR : $e");
    }
  }

  void notifyFromSysteminChat(String value) {
    emit(state.copyWith(
      answers: List.of(state.answers)
        ..insert(
          0,
          AnswerModel(
            username: "SYSTEM",
            answer: value,
            isCorrect: false,
            isSystem: true,
          ),
        ),
    ));
  }

  void disconnectWebsocket() {
    try {
      channel?.sink.add(jsonEncode({
        "method": "disconnect",
      }));
      channel?.sink.close();
    } catch (e) {
      debugPrint("ERROR : $e");
    }
  }

  @override
  Future<void> close() {
    disconnectWebsocket();
    debugPrint("Drawing Bloc is Closed");
    return super.close();
  }
}
