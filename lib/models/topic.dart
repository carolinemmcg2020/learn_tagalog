import 'package:flutter/material.dart';


class Topic{
  String name;
  IconData icon;
  Color color;
  Color backgroundColor;
  List<Topic> lessons;

  Topic(
  {
    this.name,
    this.icon,
    this.color,
    this.backgroundColor,
    this.lessons
}
);
}

