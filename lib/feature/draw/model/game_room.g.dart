// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameRoom _$$_GameRoomFromJson(Map<String, dynamic> json) => _$_GameRoom(
      id: json['id'] as String? ?? "-1",
      connectedClients: (json['connectedClients'] as List<dynamic>?)
              ?.map((e) => GamePlayer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isPlaying: json['isPlaying'] as bool? ?? false,
      currentPlayer: json['currentPlayer'] == null
          ? null
          : GamePlayer.fromJson(json['currentPlayer'] as Map<String, dynamic>),
      currentAnswer: json['currentAnswer'] as String? ?? "",
      currentDuration: json['currentDuration'] as int? ?? 0,
      currentDrawingPoint: (json['currentDrawingPoint'] as List<dynamic>?)
              ?.map((e) => DrawingPoint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_GameRoomToJson(_$_GameRoom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'connectedClients': instance.connectedClients,
      'isPlaying': instance.isPlaying,
      'currentPlayer': instance.currentPlayer,
      'currentAnswer': instance.currentAnswer,
      'currentDuration': instance.currentDuration,
      'currentDrawingPoint': instance.currentDrawingPoint,
    };

_$_GamePlayer _$$_GamePlayerFromJson(Map<String, dynamic> json) =>
    _$_GamePlayer(
      username: json['username'] as String? ?? "1",
      score: json['score'] as int? ?? 0,
      isAnswered: json['isAnswered'] as bool? ?? false,
    );

Map<String, dynamic> _$$_GamePlayerToJson(_$_GamePlayer instance) =>
    <String, dynamic>{
      'username': instance.username,
      'score': instance.score,
      'isAnswered': instance.isAnswered,
    };
