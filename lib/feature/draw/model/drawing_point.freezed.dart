// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drawing_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DrawingPoint _$DrawingPointFromJson(Map<String, dynamic> json) {
  return _DrawingPoint.fromJson(json);
}

/// @nodoc
mixin _$DrawingPoint {
  int? get id => throw _privateConstructorUsedError;
  List<DrawingOffset> get offsets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrawingPointCopyWith<DrawingPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawingPointCopyWith<$Res> {
  factory $DrawingPointCopyWith(
          DrawingPoint value, $Res Function(DrawingPoint) then) =
      _$DrawingPointCopyWithImpl<$Res, DrawingPoint>;
  @useResult
  $Res call({int? id, List<DrawingOffset> offsets});
}

/// @nodoc
class _$DrawingPointCopyWithImpl<$Res, $Val extends DrawingPoint>
    implements $DrawingPointCopyWith<$Res> {
  _$DrawingPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? offsets = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      offsets: null == offsets
          ? _value.offsets
          : offsets // ignore: cast_nullable_to_non_nullable
              as List<DrawingOffset>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DrawingPointCopyWith<$Res>
    implements $DrawingPointCopyWith<$Res> {
  factory _$$_DrawingPointCopyWith(
          _$_DrawingPoint value, $Res Function(_$_DrawingPoint) then) =
      __$$_DrawingPointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, List<DrawingOffset> offsets});
}

/// @nodoc
class __$$_DrawingPointCopyWithImpl<$Res>
    extends _$DrawingPointCopyWithImpl<$Res, _$_DrawingPoint>
    implements _$$_DrawingPointCopyWith<$Res> {
  __$$_DrawingPointCopyWithImpl(
      _$_DrawingPoint _value, $Res Function(_$_DrawingPoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? offsets = null,
  }) {
    return _then(_$_DrawingPoint(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      offsets: null == offsets
          ? _value._offsets
          : offsets // ignore: cast_nullable_to_non_nullable
              as List<DrawingOffset>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DrawingPoint implements _DrawingPoint {
  const _$_DrawingPoint(
      {this.id = 1, final List<DrawingOffset> offsets = const []})
      : _offsets = offsets;

  factory _$_DrawingPoint.fromJson(Map<String, dynamic> json) =>
      _$$_DrawingPointFromJson(json);

  @override
  @JsonKey()
  final int? id;
  final List<DrawingOffset> _offsets;
  @override
  @JsonKey()
  List<DrawingOffset> get offsets {
    if (_offsets is EqualUnmodifiableListView) return _offsets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offsets);
  }

  @override
  String toString() {
    return 'DrawingPoint(id: $id, offsets: $offsets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrawingPoint &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._offsets, _offsets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_offsets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DrawingPointCopyWith<_$_DrawingPoint> get copyWith =>
      __$$_DrawingPointCopyWithImpl<_$_DrawingPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DrawingPointToJson(
      this,
    );
  }
}

abstract class _DrawingPoint implements DrawingPoint {
  const factory _DrawingPoint(
      {final int? id, final List<DrawingOffset> offsets}) = _$_DrawingPoint;

  factory _DrawingPoint.fromJson(Map<String, dynamic> json) =
      _$_DrawingPoint.fromJson;

  @override
  int? get id;
  @override
  List<DrawingOffset> get offsets;
  @override
  @JsonKey(ignore: true)
  _$$_DrawingPointCopyWith<_$_DrawingPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

DrawingOffset _$DrawingOffsetFromJson(Map<String, dynamic> json) {
  return _DrawingOffset.fromJson(json);
}

/// @nodoc
mixin _$DrawingOffset {
  double get dx => throw _privateConstructorUsedError;
  double get dy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrawingOffsetCopyWith<DrawingOffset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawingOffsetCopyWith<$Res> {
  factory $DrawingOffsetCopyWith(
          DrawingOffset value, $Res Function(DrawingOffset) then) =
      _$DrawingOffsetCopyWithImpl<$Res, DrawingOffset>;
  @useResult
  $Res call({double dx, double dy});
}

/// @nodoc
class _$DrawingOffsetCopyWithImpl<$Res, $Val extends DrawingOffset>
    implements $DrawingOffsetCopyWith<$Res> {
  _$DrawingOffsetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dx = null,
    Object? dy = null,
  }) {
    return _then(_value.copyWith(
      dx: null == dx
          ? _value.dx
          : dx // ignore: cast_nullable_to_non_nullable
              as double,
      dy: null == dy
          ? _value.dy
          : dy // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DrawingOffsetCopyWith<$Res>
    implements $DrawingOffsetCopyWith<$Res> {
  factory _$$_DrawingOffsetCopyWith(
          _$_DrawingOffset value, $Res Function(_$_DrawingOffset) then) =
      __$$_DrawingOffsetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double dx, double dy});
}

/// @nodoc
class __$$_DrawingOffsetCopyWithImpl<$Res>
    extends _$DrawingOffsetCopyWithImpl<$Res, _$_DrawingOffset>
    implements _$$_DrawingOffsetCopyWith<$Res> {
  __$$_DrawingOffsetCopyWithImpl(
      _$_DrawingOffset _value, $Res Function(_$_DrawingOffset) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dx = null,
    Object? dy = null,
  }) {
    return _then(_$_DrawingOffset(
      dx: null == dx
          ? _value.dx
          : dx // ignore: cast_nullable_to_non_nullable
              as double,
      dy: null == dy
          ? _value.dy
          : dy // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DrawingOffset implements _DrawingOffset {
  const _$_DrawingOffset({this.dx = 0, this.dy = 0});

  factory _$_DrawingOffset.fromJson(Map<String, dynamic> json) =>
      _$$_DrawingOffsetFromJson(json);

  @override
  @JsonKey()
  final double dx;
  @override
  @JsonKey()
  final double dy;

  @override
  String toString() {
    return 'DrawingOffset(dx: $dx, dy: $dy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrawingOffset &&
            (identical(other.dx, dx) || other.dx == dx) &&
            (identical(other.dy, dy) || other.dy == dy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dx, dy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DrawingOffsetCopyWith<_$_DrawingOffset> get copyWith =>
      __$$_DrawingOffsetCopyWithImpl<_$_DrawingOffset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DrawingOffsetToJson(
      this,
    );
  }
}

abstract class _DrawingOffset implements DrawingOffset {
  const factory _DrawingOffset({final double dx, final double dy}) =
      _$_DrawingOffset;

  factory _DrawingOffset.fromJson(Map<String, dynamic> json) =
      _$_DrawingOffset.fromJson;

  @override
  double get dx;
  @override
  double get dy;
  @override
  @JsonKey(ignore: true)
  _$$_DrawingOffsetCopyWith<_$_DrawingOffset> get copyWith =>
      throw _privateConstructorUsedError;
}
