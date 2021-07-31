import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:learn_tagalog/widgets/quiz_button.dart';
import 'package:learn_tagalog/widgets/theme_background_color.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class EndOfTopicQuizDetail extends StatefulWidget {
  @override
  _EndOfTopicQuizDetailState createState() => _EndOfTopicQuizDetailState();
}

class _EndOfTopicQuizDetailState extends State<EndOfTopicQuizDetail> {
  double _progress = 0.0;



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
                    percent: _progress / 100,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Text(
                      'What is the word for egg?',
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ),
                ),
              ),
              QuizButton(
                buttonTxt: 'Answer A',
                onTap: (){
                  setState(() {
                    _progress++;
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
