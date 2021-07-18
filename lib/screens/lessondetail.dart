import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:just_audio/just_audio.dart';
import 'package:learn_tagalog/models/category.dart';
import 'package:learn_tagalog/models/lesson_brain.dart';
import 'package:learn_tagalog/models/lessons.dart';

LessonBrain lessonBrain = LessonBrain();

class LessonDetail extends StatefulWidget{

  Lessons lessons;

  LessonDetail({this.lessons});

  @override
  _LessonDetailState createState() => _LessonDetailState();
}

class _LessonDetailState extends State<LessonDetail> {

  AudioPlayer player;

  int  index = 0;

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

void nextWord(){
  setState(() {
    if (index < widget.lessons.lessonContent.length - 1){
      index ++;
    }
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.red.shade600, Colors.purple.shade300]
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 20.0),
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(FontAwesomeIcons.times,
                          size: 60.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              //margin: EdgeInsets.symmetric(vertical: 100.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          await player.setAsset(widget.lessons.lessonContent[index].audio);
                          player.play();
                          print('tapped');
                        },
                        child: Container(
                          child: Icon(
                            widget.lessons.lessonContent[index].icon,
                            size: 160.0,
                            color: Colors.white,),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(widget.lessons.lessonContent[index].name,
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.0,
                      ),
                      Text(widget.lessons.lessonContent[index].engWord,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 29.0,
                          color: Colors.white70
                       ),
                      ),
                      FlatButton(
                        onPressed: (){
                          nextWord();
                          print('button pressed');
                        },
                        child: Text('Button'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}