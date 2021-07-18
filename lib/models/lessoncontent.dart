import 'package:flutter/material.dart';
import 'package:learn_tagalog/models/lessons.dart';

class LessonContent extends Lessons{

  LessonContent({
    String tagalogWord,
    String engWord,
    String audio,
    IconData icon,
    Color color,
    Color backgroundColor,
}): super (
    name: tagalogWord,
    icon: icon,
    color: color,
    backgroundColor: backgroundColor,
    audio: audio,
    engWord: engWord,


  );

  //TODO need to create getters to move through lesson content
}