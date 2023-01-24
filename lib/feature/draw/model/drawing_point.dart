import 'package:freezed_annotation/freezed_annotation.dart';

part 'drawing_point.freezed.dart';
part 'drawing_point.g.dart';

@freezed
class DrawingPoint with _$DrawingPoint {
  const factory DrawingPoint({
    @Default(1) int? id,
    @Default([]) List<DrawingOffset> offsets,
  }) = _DrawingPoint;

  factory DrawingPoint.fromJson(Map<String, dynamic> json) =>
      _$DrawingPointFromJson(json);
}

@freezed
class DrawingOffset with _$DrawingOffset {
  const factory DrawingOffset({
    @Default(0) double dx,
    @Default(0) double dy,
  }) = _DrawingOffset;

  factory DrawingOffset.fromJson(Map<String, dynamic> json) =>
      _$DrawingOffsetFromJson(json);
}
