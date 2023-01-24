import 'package:freezed_annotation/freezed_annotation.dart';
part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  @JsonKey(name: 'status')
  int? status;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'data')
  T? data;

  BaseResponse({
    this.status,
    this.message,
    this.data,
  });

  factory BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$BaseResponseToJson(this, toJsonT);
}
