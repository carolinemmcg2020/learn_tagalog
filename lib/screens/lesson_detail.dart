import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_alert/flutter_alert.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:just_audio/just_audio.dart';
import 'package:learn_tagalog/bottom_nav_bar.dart';
import 'package:learn_tagalog/models/lesson.dart';
import 'package:learn_tagalog/models/topic.dart';
import 'package:learn_tagalog/screens/end_of_lesson_quiz_detail.dart';
import 'package:learn_tagalog/widgets/custom_alert_dialog.dart';
import 'package:learn_tagalog/widgets/custom_close_button.dart';
import 'package:learn_tagalog/widgets/custom_lesson_icon.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LessonDetail extends StatefulWidget {
  final Lesson lessons;

  LessonDetail({this.lessons});

  @override
  _LessonDetailState createState() => _LessonDetailState();
}

class _LessonDetailState extends State<LessonDetail> {
  AudioPlayer player;
  Topic category;

  int index = 0;
  double percent = 0.0;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  void reset() {
    index = 0;
    percent = 0.0;
  }

  void nextWord() {
    setState(
      () {
        if (index >= widget.lessons.lessonContent.length - 1) {
          print('button pressed');
          finishedAlertDialog();
        } else {
          if (index < widget.lessons.lessonContent.length - 1) {
            index++;
          }
        }
      },
    );
  }

  double phraseFontSize(){
    if(widget.lessons.lessonContent[index].type == "phrase"){
      return 28.0;
    } else {
      return 40.0;
    }
  }

  void finishedAlertDialog() {
    showAlert(
      context: context,
      title: 'Review lesson?',
      body: 'Test your knowledge by answering questions about this lesson.',
      actions: [
        AlertAction(
          text: 'Yes',
          onPressed: () {
            setState(() {
              index = 0;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => EndOfLessonQuizDetail(
                    questionContent: widget.lessons.lessonContent,
                    quizTitle: widget.lessons.name,
                    //index: index,
                  ),
                ),
              );
            });
          },
        ),
        AlertAction(
          text: 'Redo',
          onPressed: () {
            setState(
                  () {
                reset();
              },
            );
            print('pressed redo' + '' + index.toString());
          },
        )
      ],
    );
  }

  alertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext alertContext) {
          return CustomAlertDialog(
            title: "Exit this lesson",
            content: "Are you sure want to exit this lesson? You will loose progress, if you confirm",
            button1Text: 'Yes',
            btn1Func: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavBar()),
                      (route) => false);
            },
            button2Text: 'No',
            btn2Func: () {
              Navigator.of(alertContext, rootNavigator: true).pop();
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.red.shade600, Colors.purple.shade300]),
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Lesson Topic: " + widget.lessons.name,
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.amberAccent),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 250.0,
                    child: LinearPercentIndicator(
                      lineHeight: 10.0,
                      backgroundColor: Colors.white,
                      progressColor: Colors.amber,
                      percent: percent /
                          widget.lessons.lessonContent.length.toDouble(),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 10.0),
                    // margin: EdgeInsets.symmetric(vertical: 10.0),
                    child:CustomCloseButton(
                      onTap: (){
                        setState(() {
                          alertDialog(context);
                        });
                      },
                    )
                  ),
                ],
              ),
              Container(
                // padding: EdgeInsets.symmetric(vertical: 30.0),
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  children: [
                    CustomLessonIcon(
                      onTap: () async {
                        await player.setAsset(
                            widget.lessons.lessonContent[index].audio);
                        await player.setSpeed(1);
                        player.play();
                      },
                      onDoubleTap: () async{
                        await player.setAsset(
                            widget.lessons.lessonContent[index].audio);
                        await player.setSpeed(0.5);
                        player.play();
                      },
                      icon: widget.lessons.lessonContent[index].icon,
                      iconColor: widget.lessons.lessonContent[index].color,
                      iconSize: 140.0,
                      glowRadius: 120.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.lessons.lessonContent[index].name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: phraseFontSize(),
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.lessons.lessonContent[index].engWord,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 25.0,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {
                          nextWord();
                          player.stop();
                          setState(
                            () {
                              percent++;
                            },
                          );
                        },
                        child: Icon(
                          FontAwesomeIcons.arrowCircleRight,
                          size: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
