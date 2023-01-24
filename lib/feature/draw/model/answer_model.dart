import 'package:flutter_skeleton/feature/draw/model/game_room.dart';

class AnswerModel {
  final String username;
  final String answer;
  final bool isCorrect;
  final bool isSystem;

  AnswerModel({
    required this.username,
    required this.answer,
    required this.isCorrect,
    this.isSystem = false,
  });
}
