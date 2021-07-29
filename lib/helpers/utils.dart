import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_tagalog/models/category.dart';
import 'package:learn_tagalog/models/lessoncontent.dart';
import 'package:learn_tagalog/models/lessons.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
        name: 'Food',
        icon: FontAwesomeIcons.breadSlice,
        color: Colors.purple,
        backgroundColor: Colors.purpleAccent,
        lessons: [
          Lessons(
            name: 'Food one',
            icon: FontAwesomeIcons.hamburger,
            color: Colors.purple,
            backgroundColor: Colors.purpleAccent,
            lessonContent: [
              LessonContent(
                  tagalogWord: 'itlog',
                  engWord: 'egg',
                  icon: FontAwesomeIcons.egg,
                  color: Colors.white,
                  audio: 'assets/audio/itlog.mp3'),
              LessonContent(
                  tagalogWord: 'hatdog',
                  engWord: 'hotdog',
                  icon: FontAwesomeIcons.hotdog,
                  color: Colors.white,
                  audio: 'assets/audio/hotdog.mp3'),
              //TODO import audio assets and fill out audio variable for each lesson content object
              LessonContent(
                tagalogWord: 'berger',
                engWord: 'burger',
                icon: FontAwesomeIcons.hamburger,
                color: Colors.white,
              ),
              LessonContent(
                tagalogWord: 'kanin',
                engWord: 'rice',
                icon: FontAwesomeIcons.pills,
                color: Colors.white,
              ),
              LessonContent(
                tagalogWord: 'manok',
                engWord: 'chicken',
                icon: FontAwesomeIcons.egg,
                color: Colors.white,
              ),
            ],
          ),
          Lessons(
              name: 'Food two',
              icon: FontAwesomeIcons.flask,
              color: Colors.purple,
              backgroundColor: Colors.purpleAccent,
              lessonContent: [
                LessonContent(
                    tagalogWord: 'Walang anuman',
                    engWord: 'No worries, You/re Welcome',
                    icon: FontAwesomeIcons.egg,
                    color: Colors.white,
                    audio: 'assets/audio/egg.mp3'),
                LessonContent(
                    tagalogWord: 'Pagkain',
                    engWord: 'Food',
                    icon: FontAwesomeIcons.hotdog,
                    color: Colors.white,
                    audio: 'assets/audio/hotdog.mp3'),
                //TODO import audio assets and fill out audio variable for each lesson content object
                LessonContent(
                  tagalogWord: 'Masarap',
                  engWord: 'Delicious',
                  icon: FontAwesomeIcons.hamburger,
                  color: Colors.white,
                ),
                LessonContent(
                  tagalogWord: 'Kain Tayo',
                  engWord: 'Lets Eat',
                  icon: FontAwesomeIcons.sink,
                  color: Colors.white,
                ),
                LessonContent(
                  tagalogWord: 'adobo',
                  engWord: 'chicken',
                  icon: FontAwesomeIcons.egg,
                  color: Colors.white,
                ),
              ]),
          Lessons(
            name: 'Food three',
            icon: FontAwesomeIcons.wineBottle,
            color: Colors.purple,
            backgroundColor: Colors.purpleAccent,
          ),
          Lessons(
            name: 'Food four',
            icon: FontAwesomeIcons.glassWhiskey,
            color: Colors.purple,
            backgroundColor: Colors.purpleAccent,
          ),
          Lessons(
            name: 'Food five',
            icon: FontAwesomeIcons.glassMartini,
            color: Colors.purple,
            backgroundColor: Colors.purpleAccent,
          ),
          Lessons(
            name: 'Food six',
            icon: FontAwesomeIcons.sink,
            color: Colors.purple,
            backgroundColor: Colors.purpleAccent,
          ),
        ],
      ),
      Category(
        name: 'Alphabet',
        icon: FontAwesomeIcons.wordpress,
        color: Color.fromRGBO(124, 180, 2, 1.0),
        backgroundColor: Color.fromRGBO(171, 236, 49, 1.0),
        lessons: [
          Lessons(
            name: 'Lesson One',
            icon: FontAwesomeIcons.pencilAlt,
            color: Color.fromRGBO(124, 180, 2, 1.0),
            backgroundColor: Color.fromRGBO(171, 236, 49, 1.0),
          ),
          Lessons(
            name: 'Lesson Two',
            icon: FontAwesomeIcons.bookOpen,
            color: Color.fromRGBO(124, 180, 2, 1.0),
            backgroundColor: Color.fromRGBO(171, 236, 49, 1.0),
          ),
          Lessons(
            name: 'Lesson Three',
            icon: FontAwesomeIcons.addressBook,
            color: Color.fromRGBO(124, 180, 2, 1.0),
            backgroundColor: Color.fromRGBO(171, 236, 49, 1.0),
          ),
          Lessons(
            name: 'Lesson Four',
            icon: FontAwesomeIcons.bookReader,
            color: Color.fromRGBO(124, 180, 2, 1.0),
            backgroundColor: Color.fromRGBO(171, 236, 49, 1.0),
          ),
          Lessons(
            name: 'Lesson Five',
            icon: FontAwesomeIcons.pen,
            color: Color.fromRGBO(124, 180, 2, 1.0),
            backgroundColor: Color.fromRGBO(171, 236, 49, 1.0),
          ),
          Lessons(
            name: 'Lesson Six',
            icon: FontAwesomeIcons.ruler,
            color: Color.fromRGBO(124, 180, 2, 1.0),
            backgroundColor: Color.fromRGBO(171, 236, 49, 1.0),
          ),
        ],
      ),

      Category(
        name: 'Numbers',
        icon: FontAwesomeIcons.personBooth,
        color: Color.fromRGBO(0, 149, 85, 1.0),
        backgroundColor: Colors.green[400],
        lessons: [
          Lessons(
            name: 'Lesson One',
            icon: FontAwesomeIcons.personBooth,
            color: Color.fromRGBO(0, 149, 85, 1.0),
            backgroundColor: Colors.green[400],
          ),
          Lessons(
            name: 'Lesson Two',
            icon: FontAwesomeIcons.tractor,
            color: Color.fromRGBO(0, 149, 85, 1.0),
            backgroundColor: Colors.green[400],
          ),
          Lessons(
            name: 'Lesson Three',
            icon: FontAwesomeIcons.spaceShuttle,
            color: Color.fromRGBO(0, 149, 85, 1.0),
            backgroundColor: Colors.green[400],
          ),
          Lessons(
            name: 'Lesson Four',
            icon: FontAwesomeIcons.plane,
            color: Color.fromRGBO(0, 149, 85, 1.0),
            backgroundColor: Colors.green[400],
          ),
          Lessons(
            name: 'Lesson Five',
            icon: FontAwesomeIcons.car,
            color: Color.fromRGBO(0, 149, 85, 1.0),
            backgroundColor: Colors.green[400],
          ),
          Lessons(
            name: 'Lesson Six',
            icon: FontAwesomeIcons.train,
            color: Color.fromRGBO(0, 149, 85, 1.0),
            backgroundColor: Colors.green[400],
          ),
        ],
      ),
      //TODO: Fill with lesson content
      Category(
        name: 'Days of the Week',
        icon: FontAwesomeIcons.plane,
        color: Colors.red[700],
        backgroundColor: Colors.redAccent,
        lessons: [
          Lessons(
            name: 'Lesson One',
            icon: FontAwesomeIcons.bicycle,
            color: Colors.red[700],
            backgroundColor: Colors.redAccent,
          ),
          Lessons(
            name: 'Lesson Two',
            icon: FontAwesomeIcons.tractor,
            color: Colors.red[700],
            backgroundColor: Colors.redAccent,
          ),
          Lessons(
            name: 'Lesson Three',
            icon: FontAwesomeIcons.spaceShuttle,
            color: Colors.red[700],
            backgroundColor: Colors.redAccent,
          ),
          Lessons(
            name: 'Lesson Four',
            icon: FontAwesomeIcons.plane,
            color: Colors.red[700],
            backgroundColor: Colors.redAccent,
          ),
          Lessons(
            name: 'Lesson Five',
            icon: FontAwesomeIcons.car,
            color: Colors.red[700],
            backgroundColor: Colors.redAccent,
          ),
          Lessons(
            name: 'Lesson Six',
            icon: FontAwesomeIcons.train,
            color: Colors.red[700],
            backgroundColor: Colors.redAccent,
          ),
        ],
      ),
      Category(
        name: 'Months',
        icon: FontAwesomeIcons.paintBrush,
        color: Colors.cyan,
        backgroundColor: Colors.cyanAccent,
        lessons: [
          Lessons(
            name: 'Months One',
            icon: FontAwesomeIcons.calendar,
            color: Colors.cyan,
            backgroundColor: Colors.cyanAccent,
          ),
          Lessons(
            name: 'Months Two',
            icon: FontAwesomeIcons.calendarDay,
            color: Colors.cyan,
            backgroundColor: Colors.cyanAccent,
          ),
          Lessons(
            name: 'Months Three',
            icon: FontAwesomeIcons.calendarWeek,
            color: Colors.cyan,
            backgroundColor: Colors.cyanAccent,
          ),
        ],
      ),
      Category(
        name: 'Colours',
        icon: FontAwesomeIcons.paintBrush,
        color: Colors.deepOrange,
        backgroundColor: Colors.orangeAccent,
        lessons: [
          Lessons(
            name: 'Colours One',
            icon: FontAwesomeIcons.bicycle,
            color: Colors.deepOrange,
            backgroundColor: Colors.orangeAccent,
          ),
          Lessons(
            name: 'Colours Two',
            icon: FontAwesomeIcons.tractor,
            color: Colors.deepOrange,
            backgroundColor: Colors.orangeAccent,
          ),
          Lessons(
            name: 'Colours Three',
            icon: FontAwesomeIcons.spaceShuttle,
            color: Colors.deepOrange,
            backgroundColor: Colors.orangeAccent,
          ),
          Lessons(
            name: 'Colours Four',
            icon: FontAwesomeIcons.plane,
            color: Colors.deepOrange,
            backgroundColor: Colors.orangeAccent,
          ),
          Lessons(
            name: 'Colours Five',
            icon: FontAwesomeIcons.car,
            color: Colors.deepOrange,
            backgroundColor: Colors.orangeAccent,
          ),
          Lessons(
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
