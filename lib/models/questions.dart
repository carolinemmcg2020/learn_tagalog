import 'lesson.dart';

class Question extends Lesson {

  String answer;

  Question({
    String question,
    this.answer,
    bool questionCheck,
  }) : super(
    name: question,

  );
}
