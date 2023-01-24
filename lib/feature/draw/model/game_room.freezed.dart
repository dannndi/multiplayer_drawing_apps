// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameRoom _$GameRoomFromJson(Map<String, dynamic> json) {
  return _GameRoom.fromJson(json);
}

/// @nodoc
mixin _$GameRoom {
  String? get id => throw _privateConstructorUsedError;
  List<GamePlayer>? get connectedClients => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  GamePlayer? get currentPlayer => throw _privateConstructorUsedError;
  String? get currentAnswer => throw _privateConstructorUsedError;
  int? get currentDuration => throw _privateConstructorUsedError;
  List<DrawingPoint> get currentDrawingPoint =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameRoomCopyWith<GameRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameRoomCopyWith<$Res> {
  factory $GameRoomCopyWith(GameRoom value, $Res Function(GameRoom) then) =
      _$GameRoomCopyWithImpl<$Res, GameRoom>;
  @useResult
  $Res call(
      {String? id,
      List<GamePlayer>? connectedClients,
      bool isPlaying,
      GamePlayer? currentPlayer,
      String? currentAnswer,
      int? currentDuration,
      List<DrawingPoint> currentDrawingPoint});

  $GamePlayerCopyWith<$Res>? get currentPlayer;
}

/// @nodoc
class _$GameRoomCopyWithImpl<$Res, $Val extends GameRoom>
    implements $GameRoomCopyWith<$Res> {
  _$GameRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? connectedClients = freezed,
    Object? isPlaying = null,
    Object? currentPlayer = freezed,
    Object? currentAnswer = freezed,
    Object? currentDuration = freezed,
    Object? currentDrawingPoint = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      connectedClients: freezed == connectedClients
          ? _value.connectedClients
          : connectedClients // ignore: cast_nullable_to_non_nullable
              as List<GamePlayer>?,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPlayer: freezed == currentPlayer
          ? _value.currentPlayer
          : currentPlayer // ignore: cast_nullable_to_non_nullable
              as GamePlayer?,
      currentAnswer: freezed == currentAnswer
          ? _value.currentAnswer
          : currentAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      currentDuration: freezed == currentDuration
          ? _value.currentDuration
          : currentDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      currentDrawingPoint: null == currentDrawingPoint
          ? _value.currentDrawingPoint
          : currentDrawingPoint // ignore: cast_nullable_to_non_nullable
              as List<DrawingPoint>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GamePlayerCopyWith<$Res>? get currentPlayer {
    if (_value.currentPlayer == null) {
      return null;
    }

    return $GamePlayerCopyWith<$Res>(_value.currentPlayer!, (value) {
      return _then(_value.copyWith(currentPlayer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GameRoomCopyWith<$Res> implements $GameRoomCopyWith<$Res> {
  factory _$$_GameRoomCopyWith(
          _$_GameRoom value, $Res Function(_$_GameRoom) then) =
      __$$_GameRoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      List<GamePlayer>? connectedClients,
      bool isPlaying,
      GamePlayer? currentPlayer,
      String? currentAnswer,
      int? currentDuration,
      List<DrawingPoint> currentDrawingPoint});

  @override
  $GamePlayerCopyWith<$Res>? get currentPlayer;
}

/// @nodoc
class __$$_GameRoomCopyWithImpl<$Res>
    extends _$GameRoomCopyWithImpl<$Res, _$_GameRoom>
    implements _$$_GameRoomCopyWith<$Res> {
  __$$_GameRoomCopyWithImpl(
      _$_GameRoom _value, $Res Function(_$_GameRoom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? connectedClients = freezed,
    Object? isPlaying = null,
    Object? currentPlayer = freezed,
    Object? currentAnswer = freezed,
    Object? currentDuration = freezed,
    Object? currentDrawingPoint = null,
  }) {
    return _then(_$_GameRoom(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      connectedClients: freezed == connectedClients
          ? _value._connectedClients
          : connectedClients // ignore: cast_nullable_to_non_nullable
              as List<GamePlayer>?,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPlayer: freezed == currentPlayer
          ? _value.currentPlayer
          : currentPlayer // ignore: cast_nullable_to_non_nullable
              as GamePlayer?,
      currentAnswer: freezed == currentAnswer
          ? _value.currentAnswer
          : currentAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      currentDuration: freezed == currentDuration
          ? _value.currentDuration
          : currentDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      currentDrawingPoint: null == currentDrawingPoint
          ? _value._currentDrawingPoint
          : currentDrawingPoint // ignore: cast_nullable_to_non_nullable
              as List<DrawingPoint>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameRoom implements _GameRoom {
  const _$_GameRoom(
      {this.id = "-1",
      final List<GamePlayer>? connectedClients = const [],
      this.isPlaying = false,
      this.currentPlayer,
      this.currentAnswer = "",
      this.currentDuration = 0,
      final List<DrawingPoint> currentDrawingPoint = const []})
      : _connectedClients = connectedClients,
        _currentDrawingPoint = currentDrawingPoint;

  factory _$_GameRoom.fromJson(Map<String, dynamic> json) =>
      _$$_GameRoomFromJson(json);

  @override
  @JsonKey()
  final String? id;
  final List<GamePlayer>? _connectedClients;
  @override
  @JsonKey()
  List<GamePlayer>? get connectedClients {
    final value = _connectedClients;
    if (value == null) return null;
    if (_connectedClients is EqualUnmodifiableListView)
      return _connectedClients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isPlaying;
  @override
  final GamePlayer? currentPlayer;
  @override
  @JsonKey()
  final String? currentAnswer;
  @override
  @JsonKey()
  final int? currentDuration;
  final List<DrawingPoint> _currentDrawingPoint;
  @override
  @JsonKey()
  List<DrawingPoint> get currentDrawingPoint {
    if (_currentDrawingPoint is EqualUnmodifiableListView)
      return _currentDrawingPoint;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentDrawingPoint);
  }

  @override
  String toString() {
    return 'GameRoom(id: $id, connectedClients: $connectedClients, isPlaying: $isPlaying, currentPlayer: $currentPlayer, currentAnswer: $currentAnswer, currentDuration: $currentDuration, currentDrawingPoint: $currentDrawingPoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameRoom &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._connectedClients, _connectedClients) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.currentPlayer, currentPlayer) ||
                other.currentPlayer == currentPlayer) &&
            (identical(other.currentAnswer, currentAnswer) ||
                other.currentAnswer == currentAnswer) &&
            (identical(other.currentDuration, currentDuration) ||
                other.currentDuration == currentDuration) &&
            const DeepCollectionEquality()
                .equals(other._currentDrawingPoint, _currentDrawingPoint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_connectedClients),
      isPlaying,
      currentPlayer,
      currentAnswer,
      currentDuration,
      const DeepCollectionEquality().hash(_currentDrawingPoint));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameRoomCopyWith<_$_GameRoom> get copyWith =>
      __$$_GameRoomCopyWithImpl<_$_GameRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameRoomToJson(
      this,
    );
  }
}

abstract class _GameRoom implements GameRoom {
  const factory _GameRoom(
      {final String? id,
      final List<GamePlayer>? connectedClients,
      final bool isPlaying,
      final GamePlayer? currentPlayer,
      final String? currentAnswer,
      final int? currentDuration,
      final List<DrawingPoint> currentDrawingPoint}) = _$_GameRoom;

  factory _GameRoom.fromJson(Map<String, dynamic> json) = _$_GameRoom.fromJson;

  @override
  String? get id;
  @override
  List<GamePlayer>? get connectedClients;
  @override
  bool get isPlaying;
  @override
  GamePlayer? get currentPlayer;
  @override
  String? get currentAnswer;
  @override
  int? get currentDuration;
  @override
  List<DrawingPoint> get currentDrawingPoint;
  @override
  @JsonKey(ignore: true)
  _$$_GameRoomCopyWith<_$_GameRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

GamePlayer _$GamePlayerFromJson(Map<String, dynamic> json) {
  return _GamePlayer.fromJson(json);
}

/// @nodoc
mixin _$GamePlayer {
  String? get username => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  bool get isAnswered => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GamePlayerCopyWith<GamePlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamePlayerCopyWith<$Res> {
  factory $GamePlayerCopyWith(
          GamePlayer value, $Res Function(GamePlayer) then) =
      _$GamePlayerCopyWithImpl<$Res, GamePlayer>;
  @useResult
  $Res call({String? username, int? score, bool isAnswered});
}

/// @nodoc
class _$GamePlayerCopyWithImpl<$Res, $Val extends GamePlayer>
    implements $GamePlayerCopyWith<$Res> {
  _$GamePlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? score = freezed,
    Object? isAnswered = null,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      isAnswered: null == isAnswered
          ? _value.isAnswered
          : isAnswered // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GamePlayerCopyWith<$Res>
    implements $GamePlayerCopyWith<$Res> {
  factory _$$_GamePlayerCopyWith(
          _$_GamePlayer value, $Res Function(_$_GamePlayer) then) =
      __$$_GamePlayerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? username, int? score, bool isAnswered});
}

/// @nodoc
class __$$_GamePlayerCopyWithImpl<$Res>
    extends _$GamePlayerCopyWithImpl<$Res, _$_GamePlayer>
    implements _$$_GamePlayerCopyWith<$Res> {
  __$$_GamePlayerCopyWithImpl(
      _$_GamePlayer _value, $Res Function(_$_GamePlayer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? score = freezed,
    Object? isAnswered = null,
  }) {
    return _then(_$_GamePlayer(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      isAnswered: null == isAnswered
          ? _value.isAnswered
          : isAnswered // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GamePlayer implements _GamePlayer {
  const _$_GamePlayer(
      {this.username = "1", this.score = 0, this.isAnswered = false});

  factory _$_GamePlayer.fromJson(Map<String, dynamic> json) =>
      _$$_GamePlayerFromJson(json);

  @override
  @JsonKey()
  final String? username;
  @override
  @JsonKey()
  final int? score;
  @override
  @JsonKey()
  final bool isAnswered;

  @override
  String toString() {
    return 'GamePlayer(username: $username, score: $score, isAnswered: $isAnswered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GamePlayer &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.isAnswered, isAnswered) ||
                other.isAnswered == isAnswered));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, score, isAnswered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GamePlayerCopyWith<_$_GamePlayer> get copyWith =>
      __$$_GamePlayerCopyWithImpl<_$_GamePlayer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GamePlayerToJson(
      this,
    );
  }
}

abstract class _GamePlayer implements GamePlayer {
  const factory _GamePlayer(
      {final String? username,
      final int? score,
      final bool isAnswered}) = _$_GamePlayer;

  factory _GamePlayer.fromJson(Map<String, dynamic> json) =
      _$_GamePlayer.fromJson;

  @override
  String? get username;
  @override
  int? get score;
  @override
  bool get isAnswered;
  @override
  @JsonKey(ignore: true)
  _$$_GamePlayerCopyWith<_$_GamePlayer> get copyWith =>
      throw _privateConstructorUsedError;
}
