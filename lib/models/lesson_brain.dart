import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_tagalog/models/lessoncontent.dart';

import 'lessons.dart';


class LessonBrain {
  Lessons lessons;

 //LessonBrain({this.lessons});

  int _lessonNumber = 0;

 List<Lessons> _lessonBank = [];


  void nextLesson() {
    if (_lessonNumber < lessons.lessonContent.length - 1){
      _lessonNumber ++;
    }
  }

  String getTagalogText() {
    return lessons.lessonContent[_lessonNumber].name;
  }

  String getEnglishText() {
    return lessons.lessonContent[_lessonNumber].engWord;
  }

  String getAudio(){
    return lessons.lessonContent[_lessonNumber].audio;
  }

  IconData getIcon(){
    return lessons.lessonContent[_lessonNumber].icon;
  }

  // Void getLessonContent(){
  //
  //    // lessons.lessonContent[_lessonNumber].
  //
  //     print('content added');
  //
  // }

  void reset(){
    _lessonNumber = 0;
    //_lessonBank.clear();
  }

  bool isFinished(){
    if (_lessonNumber >= lessons.lessonContent.length - 1 ){
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.
      return true;
      print('true');
    } else {
      return false;
      print('false');
    }
  }
}
