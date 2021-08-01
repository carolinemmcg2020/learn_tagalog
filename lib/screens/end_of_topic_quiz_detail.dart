import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:learn_tagalog/models/topic.dart';
import 'package:learn_tagalog/models/lesson.dart';
import 'package:learn_tagalog/models/lessoncontent.dart';
import 'package:learn_tagalog/widgets/quiz_button.dart';
import 'package:learn_tagalog/widgets/theme_background_color.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class EndOfTopicQuizDetail extends StatefulWidget {
   List<Lesson> lesson;
  // int index = 0;

  EndOfTopicQuizDetail({this.lesson, });

  @override
  _EndOfTopicQuizDetailState createState() => _EndOfTopicQuizDetailState();
}

class _EndOfTopicQuizDetailState extends State<EndOfTopicQuizDetail> {
  double _progress = 0.0;
  int index = 0;

  void nextQuestion() {
    setState(
          () {
        if (index >= widget.lesson.length - 1) {
          print('button pressed');
        } else {
          if (index < widget.lesson.length - 1) {
            index++;
          }
        }
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ThemeColor(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Lesson One Review Quiz',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Container(
                  width: 300.0,
                  child: LinearPercentIndicator(
                    lineHeight: 10.0,
                    backgroundColor: Colors.white,
                    progressColor: Colors.amber,
                    percent: _progress /widget.lesson.length.toDouble(),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Text(
                      'What is the word for ' + widget.lesson[index].engWord + '?',
                      style: TextStyle(fontSize: 23.0),
                    ),
                  ),
                ),
              ),
              QuizButton(
                buttonTxt: widget.lesson[index].name,
                onTap: (){
                  setState(() {
                    _progress++;
                    nextQuestion();
                  });
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              QuizButton(
                buttonTxt: 'Answer B',
                onTap: (){
                  setState(() {
                    _progress = 0.0;
                    index = 0;
                  });
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              QuizButton(
                buttonTxt: 'Answer C',
              ),
              SizedBox(
                height: 30.0,
              ),
              QuizButton(
                buttonTxt: 'Answer D',
              ),
              SizedBox(
                height: 50.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
