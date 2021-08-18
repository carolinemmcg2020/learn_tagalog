import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/lesson.dart';

class QuizBrain {
  int _lessonNumber = 0;
  int option1;
  int option2;
  int option3;

  List<Lesson> lessonBank = [];

  String getTagalogText() {
    return lessonBank[_lessonNumber].name;
  }

  String getEnglishText() {
    return lessonBank[_lessonNumber].engWord;
  }

  String getAudio() {
    return lessonBank[_lessonNumber].audio;
  }

  IconData getIcon() {
    return lessonBank[_lessonNumber].icon;
  }

  String getType() {
    return lessonBank[_lessonNumber].type;
  }

  int getOpt1Index() {
    return option1;
  }

  int getOpt2Index() {
    return option2;
  }

  int getOpt3Index() {
    return option3;
  }

  void nextQuestion() {
    if (_lessonNumber < lessonBank.length - 1) {
      _lessonNumber++;
    }
  }

  bool checkAnswer(String userAnswer) {
    if (userAnswer.contains(lessonBank[_lessonNumber].engWord) == true) {
      print('Correct answer');
      nextQuestion();
      return true;
      // correctAnswerCount++;
    } else {
      print('Incorrect answer!');

      return false;
    }
  }

  int getRandomElement<T>(List<T> list) {
    final random = new Random();
    var i = random.nextInt(list.length);
    if (_lessonNumber == i && !(_lessonNumber >= list.length)) {
      i++;
    } else if (_lessonNumber == i && _lessonNumber == list.length) {
      i--;
    }
    print(i);
    return i;
  }

  void checkOptions() {
    option1 = getRandomElement(lessonBank);
    option2 = getRandomElement(lessonBank);
    option3 = getRandomElement(lessonBank);
    int numOfQs = lessonBank.length - 1;

    if (option1 == option2 || option1 == _lessonNumber) {
      if (!(option1 >= numOfQs)) {
        option1++;
      } else if (option1 == option3 || !(option1 >= numOfQs)) {
        if (option1 == _lessonNumber) {
          option1++;
        }
      }
    } else if (option1 != 0) {
      option1--;
    }

    if (option2 == option3 || !(option2 >= numOfQs)) {
      if (option2 == 0) {
        option2++;
      } else if (option2 == option1 || !(option2 >= numOfQs)) {
        if (option2 == _lessonNumber) {
          option2++;
        }
      }
    } else if (option2 != 0) {
      option2--;
    }
    if (option3 == option1 || !(option3 >= numOfQs)) {
      if (option3 == 0) {
        option3++;
      } else if (option3 == option2 || !(option3 >= numOfQs)) {
        if (option3 == 0 || option3 == _lessonNumber) {
          option3++;
        }
      }
    } else if (option3 != 0) {
      option3--;
    }
    print("new opt1: $option1");
    print("new opt2: $option2");
    print("new opt3: $option3");
  }

  void reset() {
    _lessonNumber = 0;
  }

  bool isFinished() {
    if (_lessonNumber == lessonBank.length - 1) {
      print('now printing true');
      return true;
    } else {
      print('printing false');
      return false;
    }
  }
}
