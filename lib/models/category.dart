import 'package:flutter/material.dart';


class Category{
  String name;
  IconData icon;
  Color color;
  Color backgroundColor;
  List<Category> lessons;

  Category(
  {
    this.name,
    this.icon,
    this.color,
    this.backgroundColor,
    this.lessons
}
);
}

