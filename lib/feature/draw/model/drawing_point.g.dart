// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawing_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DrawingPoint _$$_DrawingPointFromJson(Map<String, dynamic> json) =>
    _$_DrawingPoint(
      id: json['id'] as int? ?? 1,
      offsets: (json['offsets'] as List<dynamic>?)
              ?.map((e) => DrawingOffset.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DrawingPointToJson(_$_DrawingPoint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'offsets': instance.offsets,
    };

_$_DrawingOffset _$$_DrawingOffsetFromJson(Map<String, dynamic> json) =>
    _$_DrawingOffset(
      dx: (json['dx'] as num?)?.toDouble() ?? 0,
      dy: (json['dy'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_DrawingOffsetToJson(_$_DrawingOffset instance) =>
    <String, dynamic>{
      'dx': instance.dx,
      'dy': instance.dy,
    };
