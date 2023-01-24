part of 'drawing_cubit.dart';

@freezed
class DrawingState with _$DrawingState {
  const factory DrawingState({
    @Default([]) List<DrawingPoint> historyDrawingPoints,
    @Default([]) List<DrawingPoint> drawingPoints,
    GameRoom? gameRoom,
    @Default([]) List<AnswerModel> answers,
  }) = _DrawingState;
}
