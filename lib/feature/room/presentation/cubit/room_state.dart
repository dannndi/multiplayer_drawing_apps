part of 'room_cubit.dart';

@freezed
class RoomState with _$RoomState {
  const factory RoomState({
    @Default(BlocStatus.initial) BlocStatus status,
    @Default(BlocStatus.initial) BlocStatus createStatus,
    @Default([]) List<RoomModel> rooms,
    @Default(BlocStatus.initial) BlocStatus joinStatus,
    String? roomId,
    String? errorMessage,
  }) = _RoomState;
}
