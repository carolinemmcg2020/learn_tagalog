import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_tagalog/models/lesson.dart';
import 'package:learn_tagalog/models/lessoncontent.dart';
import 'package:learn_tagalog/models/questions.dart';
import 'package:learn_tagalog/models/topic.dart';

class Utils {
  static List<Topic> getMockedCategories() {
    return [
      Topic(
        name: 'Food',
        icon: FontAwesomeIcons.breadSlice,
        color: Colors.purple,
        backgroundColor: Colors.purpleAccent,
        lessons: [
          Lesson(
            name: 'Food one',
            icon: FontAwesomeIcons.hamburger,
            color: Colors.purple,
            backgroundColor: Colors.purpleAccent,
            lessonQuestions: [
              Question(question: 'What is the word for egg?', answer: 'itlog'),
              Question(question: 'What is the word for burger?', answer: 'berger'),
              Question(question: 'What is the word for hotdog?', answer: 'hatdog'),
              Question(question: 'What is the word for rice?', answer: 'kanin'),
              Question(question: 'What is the word for chicken?', answer: 'manok'),

            ],
            lessonContent: [
              LessonContent(
                tagalogWord: 'itlog',
                engWord: 'egg',
                icon: FontAwesomeIcons.egg,
                color: Colors.white,
                audio: 'assets/audio/itlog.mp3',
                type: 'word',
              ),
              LessonContent(
                tagalogWord: 'hatdog',
                engWord: 'hotdog',
                icon: FontAwesomeIcons.hotdog,
                color: Colors.white,
                audio: 'assets/audio/hatdog.mp3',
                type: 'word',
              ),
              //TODO import audio assets and fill out audio variable for each lesson content object
              LessonContent(
                tagalogWord: 'berger',
                engWord: 'burger',
                icon: FontAwesomeIcons.hamburger,
                color: Colors.white,
                type: 'word',
              ),
              LessonContent(
                tagalogWord: 'kanin',
                engWord: 'rice',
                icon: FontAwesomeIcons.pills,
                color: Colors.white,
                type: 'word',
              ),
              LessonContent(
                tagalogWord: 'manok',
                engWord: 'chicken',
                icon: FontAwesomeIcons.earlybirds,
                color: Colors.white,
                type: 'word',
              ),
            ],
          ),
          Lesson(
            name: 'Food two',
            icon: FontAwesomeIcons.flask,
            color: Colors.purple,
            backgroundColor: Colors.purpleAccent,
            lessonContent: [
              LessonContent(
                tagalogWord: 'Walang anuman',
                engWord: 'No worries, you are welcome',
                icon: FontAwesomeIcons.egg,
                color: Colors.white,
                audio: 'assets/audio/egg.mp3',
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'Pagkain',
                engWord: 'Food',
                icon: FontAwesomeIcons.hotdog,
                color: Colors.white,
                audio: 'assets/audio/hotdog.mp3',
                type: 'word',
              ),
              //TODO import audio assets and fill out audio variable for each lesson content object
              LessonContent(
                tagalogWord: 'Masarap',
                engWord: 'Delicious',
                icon: FontAwesomeIcons.hamburger,
                color: Colors.white,
                type: 'word',
              ),
              LessonContent(
                tagalogWord: 'Kain Tayo',
                engWord: 'Lets Eat',
                icon: FontAwesomeIcons.sink,
                color: Colors.white,
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'adobo',
                engWord: 'chicken',
                icon: FontAwesomeIcons.egg,
                color: Colors.white,
                type: 'word',
              ),
            ],
          ),
          Lesson(
            name: 'Food three',
            icon: FontAwesomeIcons.wineBottle,
            color: Colors.purple,
            backgroundColor: Colors.purpleAccent,
            lessonContent: [
              LessonContent(
                tagalogWord: 'Walang anuman',
                engWord: 'No worries, you are welcome',
                icon: FontAwesomeIcons.egg,
                color: Colors.white,
                audio: 'assets/audio/egg.mp3',
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'Pagkain',
                engWord: 'Food',
                icon: FontAwesomeIcons.hotdog,
                color: Colors.white,
                audio: 'assets/audio/hotdog.mp3',
                type: 'word',
              ),
              //TODO import audio assets and fill out audio variable for each lesson content object
              LessonContent(
                tagalogWord: 'Masarap',
                engWord: 'Delicious',
                icon: FontAwesomeIcons.hamburger,
                color: Colors.white,
                type: 'word',
              ),
              LessonContent(
                tagalogWord: 'Kain Tayo',
                engWord: 'Lets Eat',
                icon: FontAwesomeIcons.sink,
                color: Colors.white,
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'adobo',
                engWord: 'chicken',
                icon: FontAwesomeIcons.egg,
                color: Colors.white,
                type: 'word',
              ),
            ],
          ),
          Lesson(
            name: 'Food four',
            icon: FontAwesomeIcons.glassWhiskey,
            color: Colors.purple,
            backgroundColor: Colors.purpleAccent,
            lessonContent: [
              LessonContent(
                tagalogWord: 'Walang anuman',
                engWord: 'No worries, you are welcome',
                icon: FontAwesomeIcons.egg,
                color: Colors.white,
                audio: 'assets/audio/egg.mp3',
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'Pagkain',
                engWord: 'Food',
                icon: FontAwesomeIcons.hotdog,
                color: Colors.white,
                audio: 'assets/audio/hotdog.mp3',
                type: 'word',
              ),
              //TODO import audio assets and fill out audio variable for each lesson content object
              LessonContent(
                tagalogWord: 'Masarap',
                engWord: 'Delicious',
                icon: FontAwesomeIcons.hamburger,
                color: Colors.white,
                type: 'word',
              ),
              LessonContent(
                tagalogWord: 'Kain Tayo',
                engWord: 'Lets Eat',
                icon: FontAwesomeIcons.sink,
                color: Colors.white,
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'adobo',
                engWord: 'chicken',
                icon: FontAwesomeIcons.egg,
                color: Colors.white,
                type: 'word',
              ),
            ],
          ),
          Lesson(
            name: 'Food five',
            icon: FontAwesomeIcons.glassMartini,
            color: Colors.purple,
            backgroundColor: Colors.purpleAccent,
            lessonContent: [
              LessonContent(
                tagalogWord: 'Walang anuman',
                engWord: 'No worries, you are welcome',
                icon: FontAwesomeIcons.egg,
                color: Colors.white,
                audio: 'assets/audio/egg.mp3',
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'Pagkain',
                engWord: 'Food',
                icon: FontAwesomeIcons.hotdog,
                color: Colors.white,
                audio: 'assets/audio/hotdog.mp3',
                type: 'word',
              ),
              //TODO import audio assets and fill out audio variable for each lesson content object
              LessonContent(
                tagalogWord: 'Masarap',
                engWord: 'Delicious',
                icon: FontAwesomeIcons.hamburger,
                color: Colors.white,
                type: 'word',
              ),
              LessonContent(
                tagalogWord: 'Kain Tayo',
                engWord: 'Lets Eat',
                icon: FontAwesomeIcons.sink,
                color: Colors.white,
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'adobo',
                engWord: 'chicken',
                icon: FontAwesomeIcons.egg,
                color: Colors.white,
                type: 'word',
              ),
            ],
          ),
          Lesson(
            name: 'Food six',
            icon: FontAwesomeIcons.sink,
            color: Colors.purple,
            backgroundColor: Colors.purpleAccent,
            lessonContent: [
              LessonContent(
                tagalogWord: 'Walang anuman',
                engWord: 'No worries, you are welcome',
                icon: FontAwesomeIcons.egg,
                color: Colors.white,
                audio: 'assets/audio/egg.mp3',
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'Pagkain',
                engWord: 'Food',
                icon: FontAwesomeIcons.hotdog,
                color: Colors.white,
                audio: 'assets/audio/hotdog.mp3',
                type: 'word',
              ),
              //TODO import audio assets and fill out audio variable for each lesson content object
              LessonContent(
                tagalogWord: 'Masarap',
                engWord: 'Delicious',
                icon: FontAwesomeIcons.hamburger,
                color: Colors.white,
                type: 'word',
              ),
              LessonContent(
                tagalogWord: 'Kain Tayo',
                engWord: 'Lets Eat',
                icon: FontAwesomeIcons.sink,
                color: Colors.white,
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'adobo',
                engWord: 'chicken',
                icon: FontAwesomeIcons.egg,
                color: Colors.white,
                type: 'word',
              ),
            ],
          ),
        ],
      ),
      Topic(
        name: 'Alphabet',
        icon: FontAwesomeIcons.wordpress,
        color: Color.fromRGBO(124, 180, 2, 1.0),
        backgroundColor: Color.fromRGBO(171, 236, 49, 1.0),
        lessons: [
          Lesson(
            name: 'Lesson One',
            icon: FontAwesomeIcons.pencilAlt,
            color: Color.fromRGBO(124, 180, 2, 1.0),
            backgroundColor: Color.fromRGBO(171, 236, 49, 1.0),
          ),
          Lesson(
            name: 'Lesson Two',
            icon: FontAwesomeIcons.bookOpen,
            color: Color.fromRGBO(124, 180, 2, 1.0),
            backgroundColor: Color.fromRGBO(171, 236, 49, 1.0),
          ),
          Lesson(
            name: 'Lesson Three',
            icon: FontAwesomeIcons.addressBook,
            color: Color.fromRGBO(124, 180, 2, 1.0),
            backgroundColor: Color.fromRGBO(171, 236, 49, 1.0),
          ),
          Lesson(
            name: 'Lesson Four',
            icon: FontAwesomeIcons.bookReader,
            color: Color.fromRGBO(124, 180, 2, 1.0),
            backgroundColor: Color.fromRGBO(171, 236, 49, 1.0),
          ),
          Lesson(
            name: 'Lesson Five',
            icon: FontAwesomeIcons.pen,
            color: Color.fromRGBO(124, 180, 2, 1.0),
            backgroundColor: Color.fromRGBO(171, 236, 49, 1.0),
          ),
          Lesson(
            name: 'Lesson Six',
            icon: FontAwesomeIcons.ruler,
            color: Color.fromRGBO(124, 180, 2, 1.0),
            backgroundColor: Color.fromRGBO(171, 236, 49, 1.0),
          ),
        ],
      ),

      Topic(
        name: 'Numbers',
        icon: FontAwesomeIcons.personBooth,
        color: Color.fromRGBO(0, 149, 85, 1.0),
        backgroundColor: Colors.green[400],
        lessons: [
          Lesson(
            name: 'Lesson One',
            icon: FontAwesomeIcons.personBooth,
            color: Color.fromRGBO(0, 149, 85, 1.0),
            backgroundColor: Colors.green[400],
          ),
          Lesson(
            name: 'Lesson Two',
            icon: FontAwesomeIcons.tractor,
            color: Color.fromRGBO(0, 149, 85, 1.0),
            backgroundColor: Colors.green[400],
          ),
          Lesson(
            name: 'Lesson Three',
            icon: FontAwesomeIcons.spaceShuttle,
            color: Color.fromRGBO(0, 149, 85, 1.0),
            backgroundColor: Colors.green[400],
          ),
          Lesson(
            name: 'Lesson Four',
            icon: FontAwesomeIcons.plane,
            color: Color.fromRGBO(0, 149, 85, 1.0),
            backgroundColor: Colors.green[400],
          ),
          Lesson(
            name: 'Lesson Five',
            icon: FontAwesomeIcons.car,
            color: Color.fromRGBO(0, 149, 85, 1.0),
            backgroundColor: Colors.green[400],
          ),
          Lesson(
            name: 'Lesson Six',
            icon: FontAwesomeIcons.train,
            color: Color.fromRGBO(0, 149, 85, 1.0),
            backgroundColor: Colors.green[400],
          ),
        ],
      ),
      //TODO: Fill with lesson content
      Topic(
        name: 'Days of the Week',
        icon: FontAwesomeIcons.plane,
        color: Colors.red[700],
        backgroundColor: Colors.redAccent,
        lessons: [
          Lesson(
            name: 'Lesson One',
            icon: FontAwesomeIcons.bicycle,
            color: Colors.red[700],
            backgroundColor: Colors.redAccent,
          ),
          Lesson(
            name: 'Lesson Two',
            icon: FontAwesomeIcons.tractor,
            color: Colors.red[700],
            backgroundColor: Colors.redAccent,
          ),
          Lesson(
            name: 'Lesson Three',
            icon: FontAwesomeIcons.spaceShuttle,
            color: Colors.red[700],
            backgroundColor: Colors.redAccent,
          ),
          Lesson(
            name: 'Lesson Four',
            icon: FontAwesomeIcons.plane,
            color: Colors.red[700],
            backgroundColor: Colors.redAccent,
          ),
          Lesson(
            name: 'Lesson Five',
            icon: FontAwesomeIcons.car,
            color: Colors.red[700],
            backgroundColor: Colors.redAccent,
          ),
          Lesson(
            name: 'Lesson Six',
            icon: FontAwesomeIcons.train,
            color: Colors.red[700],
            backgroundColor: Colors.redAccent,
          ),
        ],
      ),
      Topic(
        name: 'Months',
        icon: FontAwesomeIcons.paintBrush,
        color: Colors.cyan,
        backgroundColor: Colors.cyanAccent,
        lessons: [
          Lesson(
            name: 'Months One',
            icon: FontAwesomeIcons.calendar,
            color: Colors.cyan,
            backgroundColor: Colors.cyanAccent,
          ),
          Lesson(
            name: 'Months Two',
            icon: FontAwesomeIcons.calendarDay,
            color: Colors.cyan,
            backgroundColor: Colors.cyanAccent,
          ),
          Lesson(
            name: 'Months Three',
            icon: FontAwesomeIcons.calendarWeek,
            color: Colors.cyan,
            backgroundColor: Colors.cyanAccent,
          ),
        ],
      ),
      Topic(
        name: 'Colours',
        icon: FontAwesomeIcons.paintBrush,
        color: Colors.deepOrange,
        backgroundColor: Colors.orangeAccent,
        lessons: [
          Lesson(
            name: 'Colours One',
            icon: FontAwesomeIcons.bicycle,
            color: Colors.deepOrange,
            backgroundColor: Colors.orangeAccent,
          ),
          Lesson(
            name: 'Colours Two',
            icon: FontAwesomeIcons.tractor,
            color: Colors.deepOrange,
            backgroundColor: Colors.orangeAccent,
          ),
          Lesson(
            name: 'Colours Three',
            icon: FontAwesomeIcons.spaceShuttle,
            color: Colors.deepOrange,
            backgroundColor: Colors.orangeAccent,
          ),
          Lesson(
            name: 'Colours Four',
            icon: FontAwesomeIcons.plane,
            color: Colors.deepOrange,
            backgroundColor: Colors.orangeAccent,
          ),
          Lesson(
            name: 'Colours Five',
            icon: FontAwesomeIcons.car,
            color: Colors.deepOrange,
            backgroundColor: Colors.orangeAccent,
          ),
          Lesson(
            name: 'Colours Six',
            icon: FontAwesomeIcons.train,
            color: Colors.deepOrange,
            backgroundColor: Colors.orangeAccent,
          ),
        ],
      ),
    ];
  }
}
