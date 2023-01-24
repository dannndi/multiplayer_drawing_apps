// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomState {
  BlocStatus get status => throw _privateConstructorUsedError;
  BlocStatus get createStatus => throw _privateConstructorUsedError;
  List<RoomModel> get rooms => throw _privateConstructorUsedError;
  BlocStatus get joinStatus => throw _privateConstructorUsedError;
  String? get roomId => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomStateCopyWith<RoomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomStateCopyWith<$Res> {
  factory $RoomStateCopyWith(RoomState value, $Res Function(RoomState) then) =
      _$RoomStateCopyWithImpl<$Res, RoomState>;
  @useResult
  $Res call(
      {BlocStatus status,
      BlocStatus createStatus,
      List<RoomModel> rooms,
      BlocStatus joinStatus,
      String? roomId,
      String? errorMessage});
}

/// @nodoc
class _$RoomStateCopyWithImpl<$Res, $Val extends RoomState>
    implements $RoomStateCopyWith<$Res> {
  _$RoomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? createStatus = null,
    Object? rooms = null,
    Object? joinStatus = null,
    Object? roomId = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      createStatus: null == createStatus
          ? _value.createStatus
          : createStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
      joinStatus: null == joinStatus
          ? _value.joinStatus
          : joinStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomStateCopyWith<$Res> implements $RoomStateCopyWith<$Res> {
  factory _$$_RoomStateCopyWith(
          _$_RoomState value, $Res Function(_$_RoomState) then) =
      __$$_RoomStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      BlocStatus createStatus,
      List<RoomModel> rooms,
      BlocStatus joinStatus,
      String? roomId,
      String? errorMessage});
}

/// @nodoc
class __$$_RoomStateCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$_RoomState>
    implements _$$_RoomStateCopyWith<$Res> {
  __$$_RoomStateCopyWithImpl(
      _$_RoomState _value, $Res Function(_$_RoomState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? createStatus = null,
    Object? rooms = null,
    Object? joinStatus = null,
    Object? roomId = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_RoomState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      createStatus: null == createStatus
          ? _value.createStatus
          : createStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
      joinStatus: null == joinStatus
          ? _value.joinStatus
          : joinStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RoomState implements _RoomState {
  const _$_RoomState(
      {this.status = BlocStatus.initial,
      this.createStatus = BlocStatus.initial,
      final List<RoomModel> rooms = const [],
      this.joinStatus = BlocStatus.initial,
      this.roomId,
      this.errorMessage})
      : _rooms = rooms;

  @override
  @JsonKey()
  final BlocStatus status;
  @override
  @JsonKey()
  final BlocStatus createStatus;
  final List<RoomModel> _rooms;
  @override
  @JsonKey()
  List<RoomModel> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  @JsonKey()
  final BlocStatus joinStatus;
  @override
  final String? roomId;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'RoomState(status: $status, createStatus: $createStatus, rooms: $rooms, joinStatus: $joinStatus, roomId: $roomId, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createStatus, createStatus) ||
                other.createStatus == createStatus) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            (identical(other.joinStatus, joinStatus) ||
                other.joinStatus == joinStatus) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      createStatus,
      const DeepCollectionEquality().hash(_rooms),
      joinStatus,
      roomId,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomStateCopyWith<_$_RoomState> get copyWith =>
      __$$_RoomStateCopyWithImpl<_$_RoomState>(this, _$identity);
}

abstract class _RoomState implements RoomState {
  const factory _RoomState(
      {final BlocStatus status,
      final BlocStatus createStatus,
      final List<RoomModel> rooms,
      final BlocStatus joinStatus,
      final String? roomId,
      final String? errorMessage}) = _$_RoomState;

  @override
  BlocStatus get status;
  @override
  BlocStatus get createStatus;
  @override
  List<RoomModel> get rooms;
  @override
  BlocStatus get joinStatus;
  @override
  String? get roomId;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_RoomStateCopyWith<_$_RoomState> get copyWith =>
      throw _privateConstructorUsedError;
}
