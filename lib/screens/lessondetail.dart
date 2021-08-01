import 'package:flutter/material.dart';
import 'package:flutter_alert/flutter_alert.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:just_audio/just_audio.dart';
import 'package:learn_tagalog/models/topic.dart';
import 'package:learn_tagalog/models/lesson.dart';
import 'package:learn_tagalog/screens/end_of_topic_quiz_detail.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


class LessonDetail extends StatefulWidget {
  Lesson lessons;

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

  void alertDialog() {
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
                  builder: (context) => EndOfTopicQuizDetail(
                    lesson: widget.lessons.lessonContent,
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

  void nextWord() {
    setState(
      () {
        if (index >= widget.lessons.lessonContent.length - 1) {
          print('button pressed');
          alertDialog();
        } else {
          if (index < widget.lessons.lessonContent.length - 1) {
            index++;
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.red.shade600, Colors.purple.shade300]),
        ),
        child: SafeArea(
          child: Column(
            children: [
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
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            FontAwesomeIcons.times,
                            size: 40.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 50.0),
                margin: EdgeInsets.symmetric(vertical: 30.0),
                child: Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () async {
                              await player.setAsset(
                                  widget.lessons.lessonContent[index].audio);
                              player.play();
                              print('tapped');
                            },
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                widget.lessons.lessonContent[index].icon,
                                size: 200.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            widget.lessons.lessonContent[index].name,
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            widget.lessons.lessonContent[index].engWord,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 29.0,
                                color: Colors.white70),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 400,
                            child: FlatButton(
                              onPressed: () {
                                nextWord();
                                setState(
                                  () {
                                    percent++;
                                  },
                                );
                                print(percent);
                              },
                              child: Text('Button'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
