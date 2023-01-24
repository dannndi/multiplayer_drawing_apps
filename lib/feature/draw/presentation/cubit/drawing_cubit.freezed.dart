// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drawing_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DrawingState {
  List<DrawingPoint> get historyDrawingPoints =>
      throw _privateConstructorUsedError;
  List<DrawingPoint> get drawingPoints => throw _privateConstructorUsedError;
  GameRoom? get gameRoom => throw _privateConstructorUsedError;
  List<AnswerModel> get answers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrawingStateCopyWith<DrawingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawingStateCopyWith<$Res> {
  factory $DrawingStateCopyWith(
          DrawingState value, $Res Function(DrawingState) then) =
      _$DrawingStateCopyWithImpl<$Res, DrawingState>;
  @useResult
  $Res call(
      {List<DrawingPoint> historyDrawingPoints,
      List<DrawingPoint> drawingPoints,
      GameRoom? gameRoom,
      List<AnswerModel> answers});

  $GameRoomCopyWith<$Res>? get gameRoom;
}

/// @nodoc
class _$DrawingStateCopyWithImpl<$Res, $Val extends DrawingState>
    implements $DrawingStateCopyWith<$Res> {
  _$DrawingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? historyDrawingPoints = null,
    Object? drawingPoints = null,
    Object? gameRoom = freezed,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      historyDrawingPoints: null == historyDrawingPoints
          ? _value.historyDrawingPoints
          : historyDrawingPoints // ignore: cast_nullable_to_non_nullable
              as List<DrawingPoint>,
      drawingPoints: null == drawingPoints
          ? _value.drawingPoints
          : drawingPoints // ignore: cast_nullable_to_non_nullable
              as List<DrawingPoint>,
      gameRoom: freezed == gameRoom
          ? _value.gameRoom
          : gameRoom // ignore: cast_nullable_to_non_nullable
              as GameRoom?,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameRoomCopyWith<$Res>? get gameRoom {
    if (_value.gameRoom == null) {
      return null;
    }

    return $GameRoomCopyWith<$Res>(_value.gameRoom!, (value) {
      return _then(_value.copyWith(gameRoom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DrawingStateCopyWith<$Res>
    implements $DrawingStateCopyWith<$Res> {
  factory _$$_DrawingStateCopyWith(
          _$_DrawingState value, $Res Function(_$_DrawingState) then) =
      __$$_DrawingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DrawingPoint> historyDrawingPoints,
      List<DrawingPoint> drawingPoints,
      GameRoom? gameRoom,
      List<AnswerModel> answers});

  @override
  $GameRoomCopyWith<$Res>? get gameRoom;
}

/// @nodoc
class __$$_DrawingStateCopyWithImpl<$Res>
    extends _$DrawingStateCopyWithImpl<$Res, _$_DrawingState>
    implements _$$_DrawingStateCopyWith<$Res> {
  __$$_DrawingStateCopyWithImpl(
      _$_DrawingState _value, $Res Function(_$_DrawingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? historyDrawingPoints = null,
    Object? drawingPoints = null,
    Object? gameRoom = freezed,
    Object? answers = null,
  }) {
    return _then(_$_DrawingState(
      historyDrawingPoints: null == historyDrawingPoints
          ? _value._historyDrawingPoints
          : historyDrawingPoints // ignore: cast_nullable_to_non_nullable
              as List<DrawingPoint>,
      drawingPoints: null == drawingPoints
          ? _value._drawingPoints
          : drawingPoints // ignore: cast_nullable_to_non_nullable
              as List<DrawingPoint>,
      gameRoom: freezed == gameRoom
          ? _value.gameRoom
          : gameRoom // ignore: cast_nullable_to_non_nullable
              as GameRoom?,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModel>,
    ));
  }
}

/// @nodoc

class _$_DrawingState with DiagnosticableTreeMixin implements _DrawingState {
  const _$_DrawingState(
      {final List<DrawingPoint> historyDrawingPoints = const [],
      final List<DrawingPoint> drawingPoints = const [],
      this.gameRoom,
      final List<AnswerModel> answers = const []})
      : _historyDrawingPoints = historyDrawingPoints,
        _drawingPoints = drawingPoints,
        _answers = answers;

  final List<DrawingPoint> _historyDrawingPoints;
  @override
  @JsonKey()
  List<DrawingPoint> get historyDrawingPoints {
    if (_historyDrawingPoints is EqualUnmodifiableListView)
      return _historyDrawingPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historyDrawingPoints);
  }

  final List<DrawingPoint> _drawingPoints;
  @override
  @JsonKey()
  List<DrawingPoint> get drawingPoints {
    if (_drawingPoints is EqualUnmodifiableListView) return _drawingPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drawingPoints);
  }

  @override
  final GameRoom? gameRoom;
  final List<AnswerModel> _answers;
  @override
  @JsonKey()
  List<AnswerModel> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DrawingState(historyDrawingPoints: $historyDrawingPoints, drawingPoints: $drawingPoints, gameRoom: $gameRoom, answers: $answers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DrawingState'))
      ..add(DiagnosticsProperty('historyDrawingPoints', historyDrawingPoints))
      ..add(DiagnosticsProperty('drawingPoints', drawingPoints))
      ..add(DiagnosticsProperty('gameRoom', gameRoom))
      ..add(DiagnosticsProperty('answers', answers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrawingState &&
            const DeepCollectionEquality()
                .equals(other._historyDrawingPoints, _historyDrawingPoints) &&
            const DeepCollectionEquality()
                .equals(other._drawingPoints, _drawingPoints) &&
            (identical(other.gameRoom, gameRoom) ||
                other.gameRoom == gameRoom) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_historyDrawingPoints),
      const DeepCollectionEquality().hash(_drawingPoints),
      gameRoom,
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DrawingStateCopyWith<_$_DrawingState> get copyWith =>
      __$$_DrawingStateCopyWithImpl<_$_DrawingState>(this, _$identity);
}

abstract class _DrawingState implements DrawingState {
  const factory _DrawingState(
      {final List<DrawingPoint> historyDrawingPoints,
      final List<DrawingPoint> drawingPoints,
      final GameRoom? gameRoom,
      final List<AnswerModel> answers}) = _$_DrawingState;

  @override
  List<DrawingPoint> get historyDrawingPoints;
  @override
  List<DrawingPoint> get drawingPoints;
  @override
  GameRoom? get gameRoom;
  @override
  List<AnswerModel> get answers;
  @override
  @JsonKey(ignore: true)
  _$$_DrawingStateCopyWith<_$_DrawingState> get copyWith =>
      throw _privateConstructorUsedError;
}
