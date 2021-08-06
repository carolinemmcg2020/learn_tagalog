import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_tagalog/models/lesson.dart';
import 'package:learn_tagalog/screens/results_detail.dart';
import 'package:learn_tagalog/widgets/quiz_button.dart';
import 'package:learn_tagalog/widgets/theme_background_color.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class EndOfLessonQuizDetail extends StatefulWidget {
  List<Lesson> questionContent;
  String quizTitle;

  EndOfLessonQuizDetail({this.questionContent, this.quizTitle});

  @override
  _EndOfLessonQuizDetailState createState() => _EndOfLessonQuizDetailState();
}

class _EndOfLessonQuizDetailState extends State<EndOfLessonQuizDetail> {
  double _progress = 0.0;
  int index = 0;
  bool checked;
  int correctAnswerCount = 0;

  //TODO Fix Colour Button Check
  Color buttonColorWrong = Color.fromRGBO(206, 3, 3, 1.0);
  Color buttonColorRight = Color.fromRGBO(64, 158, 0, 1.0);

  Color buttonColor = Color.fromRGBO(253, 202, 49, 1.0);
  Color buttonColor1 = Color.fromRGBO(253, 202, 49, 1.0);
  Color buttonColor2 = Color.fromRGBO(253, 202, 49, 1.0);
  Color buttonColor3 = Color.fromRGBO(253, 202, 49, 1.0);

  void nextQuestion() {
    setState(
      () {
        if (index >= widget.questionContent.length - 1) {
          print('end of list');
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ResultsDetail(userResults: correctAnswerCount,numOfQs: widget.questionContent,),
            ),
          );
        } else {
          if (index < widget.questionContent.length - 1) {
            index++;
            _progress++;
          }
        }
      },
    );
  }

  void resetQuiz() {
    setState(() {
      index = 0;
      _progress = 0;
    });
  }

  void checkAnswer(String userAnswer) {
    setState(
      () {
        if (userAnswer.contains(widget.questionContent[index].engWord) ==
            true) {
          print('Correct answer');

          checked = true;
          correctAnswerCount ++;
        } else {
          print('Incorrect answer!');
          checked = false;
        }
        buttonReset();
        nextQuestion();
      },
    );
  }

  //TODO Fix Colour Button Check
  void buttonColourCheck(Color colourChange) {
    setState(
      () {
        if (checked == true) {
          return colourChange = buttonColorRight;
        } else {
          return colourChange = Color.fromRGBO(206, 3, 3, 1.0);
        }
      },
    );
  }

  void buttonReset() {
    buttonColor = Color.fromRGBO(253, 202, 49, 1.0);
    buttonColor1 = Color.fromRGBO(253, 202, 49, 1.0);
    buttonColor2 = Color.fromRGBO(253, 202, 49, 1.0);
    buttonColor3 = Color.fromRGBO(253, 202, 49, 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ThemeColor(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    widget.quizTitle + ' Review Quiz',
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
                    percent:
                        _progress / widget.questionContent.length.toDouble(),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Text(
                      'What is the ' +
                          widget.questionContent[index].type +
                          ' for ' +
                          widget.questionContent[index].name +
                          '?',
                      style: TextStyle(fontSize: 23.0),
                    ),
                  ),
                ),
              ),
              QuizButton(
                buttonTxt: widget.questionContent[index].engWord,
                colour: buttonColor,
                onTap: () {
                  setState(() {
                    checkAnswer(widget.questionContent[index].engWord);
                    buttonColourCheck(buttonColor);
                  });
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              QuizButton(
                buttonTxt: widget.questionContent[2].engWord,
                colour: buttonColor1,
                onTap: () {
                  setState(
                    () {
                      checkAnswer(widget.questionContent[2].engWord);
                      buttonColourCheck(buttonColor1);
                    },
                  );
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              QuizButton(
                buttonTxt: widget.questionContent[3].engWord,
                colour: buttonColor2,
                onTap: () {
                  setState(
                    () {
                      checkAnswer(widget.questionContent[3].engWord);
                      // buttonColourCheck(buttonColor2);
                      if (checked == true) {
                        buttonColor2 = buttonColorRight;
                      } else {
                        buttonColor2 = buttonColorWrong;
                      }
                    },
                  );
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              QuizButton(
                buttonTxt: widget.questionContent[4].engWord,
                colour: buttonColor3,
                onTap: () {
                  setState(
                    () {
                      checkAnswer(widget.questionContent[4].engWord);
                      // buttonColourCheck(buttonColor3);
                      if (checked == true) {
                        buttonColor3 = buttonColorRight;
                      } else {
                        buttonColor3 = buttonColorWrong;
                      }
                    },
                  );
                },
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
