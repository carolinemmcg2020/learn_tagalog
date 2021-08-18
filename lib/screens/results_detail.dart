import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_tagalog/models/lesson.dart';
import 'package:learn_tagalog/utilities/results_logic.dart';
import 'package:learn_tagalog/widgets/theme_background_color.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ResultsDetail extends StatelessWidget {
  final int userResults;
  List<Lesson> numOfQs;

  bool isVisible = false;
 static const String message = '';
 ResultLogic resultLogic = ResultLogic();

  ResultsDetail({this.userResults, this.numOfQs});

  Widget buildButton(BuildContext context) {
    if (isVisible) {
      return SizedBox(
        width: 100,
        child: ClipRect(
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      )),
                ),
              ),
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Back to Lessons',
                  ),
                ),
              )
            ],
          ),
        ),
      );
    } else {
      return SizedBox(
        width: 100,
        child: ClipRect(
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      )),
                ),
              ),
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Exit',
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var percent = (userResults / numOfQs.length).toDouble();
    int percentText = (userResults / numOfQs.length * 100).toInt();

    return Scaffold(
      body: ThemeColor(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Results',
                    style: TextStyle(fontSize: 28.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(60.0),
                child: CircularPercentIndicator(
                  radius: 220.0,
                  lineWidth: 15.0,
                  progressColor: Colors.amber,
                  circularStrokeCap: CircularStrokeCap.round,
                  percent: percent,
                  center: Text(
                    "$percentText\%",
                    style:
                        TextStyle(fontSize: 60.0, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Visibility(
                visible: resultLogic.failMessage(userResults, numOfQs),
                child: Text(
                  'You should review the lesson content again before continuing to the next lesson',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.amberAccent,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  resultLogic.resultMessage(userResults, numOfQs),
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildButton(context),
            ],
          ),
        ),
      ),
    );
  }
}
