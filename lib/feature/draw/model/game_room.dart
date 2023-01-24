import 'package:flutter_skeleton/feature/draw/model/drawing_point.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_room.freezed.dart';
part 'game_room.g.dart';

@freezed
class GameRoom with _$GameRoom {
  const factory GameRoom({
    @Default("-1") String? id,
    @Default([]) List<GamePlayer>? connectedClients,
    @Default(false) bool isPlaying,
    GamePlayer? currentPlayer,
    @Default("") String? currentAnswer,
    @Default(0) int? currentDuration,
    @Default([]) List<DrawingPoint> currentDrawingPoint,
  }) = _GameRoom;

  factory GameRoom.fromJson(Map<String, dynamic> json) =>
      _$GameRoomFromJson(json);
}

@freezed
class GamePlayer with _$GamePlayer {
  const factory GamePlayer({
    @Default("1") String? username,
    @Default(0) int? score,
    @Default(false) bool isAnswered,
  }) = _GamePlayer;

  factory GamePlayer.fromJson(Map<String, dynamic> json) =>
      _$GamePlayerFromJson(json);
}
