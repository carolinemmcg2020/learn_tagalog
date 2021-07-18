import 'package:flutter/material.dart';
import 'package:learn_tagalog/models/category.dart';

class LessonCard extends StatelessWidget{

  Function onCardClick;
  Category lesson;

  LessonCard({this.lesson, this.onCardClick});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
        onTap: (){
          this.onCardClick();
        },
        //TODO fix card layout
        child: Container(
          width: 160,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: this.lesson.color,
            borderRadius: BorderRadius.circular(20.0),
            // gradient: LinearGradient(
            //     begin: Alignment.topRight,
            //     end: Alignment.bottomLeft,
            //     colors: [
            //       categories[index].color,
            //       categories[index].backgroundColor,
            //     ]
            // )
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Icon(
                this.lesson.icon,
                size: 50.0,
                color: this.lesson.backgroundColor,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                this.lesson.name,
                style: TextStyle(fontSize: 20.0,
                ),
              ),
            ],
          ),
        )
    );

  }
}