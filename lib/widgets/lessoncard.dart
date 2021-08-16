import 'package:flutter/material.dart';
import 'package:learn_tagalog/models/topic.dart';

class LessonCard extends StatelessWidget {
  Function onCardClick;
  Topic lesson;

  LessonCard({this.lesson, this.onCardClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.onCardClick();
      },
      child: Container(
        width: 140,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: this.lesson.color,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Center(
              child: Icon(
                this.lesson.icon,
                size: 40.0,
                color: this.lesson.backgroundColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              this.lesson.name,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
