import 'package:flutter/material.dart';
import 'package:learn_tagalog/models/topic.dart';

class Lesson extends Topic {

  List<Lesson> lessonContent;
  List<Lesson> lessonQuestions;
  String engWord;
  String audio;

  Lesson({
    String name,
    IconData icon,
    Color color,
    Color backgroundColor,
    this.lessonContent,
    this.audio,
    this.engWord,
    this.lessonQuestions,

}): super (
    name: name,
    icon: icon,
    color: color,
    backgroundColor: backgroundColor,
  );
}