import 'package:flutter/material.dart';
import 'package:learn_tagalog/models/category.dart';

class Lessons extends Category {

  List<Lessons> lessonContent;
  String engWord;
  String audio;

  Lessons({
    String name,
    IconData icon,
    Color color,
    Color backgroundColor,
    this.lessonContent,
    this.audio,
    this.engWord,

}): super (
    name: name,
    icon: icon,
    color: color,
    backgroundColor: backgroundColor,
  );
}