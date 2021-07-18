import 'package:flutter/material.dart';


class CategoryIcon extends StatelessWidget{
  Color color;
  IconData iconName;
  double size;

  CategoryIcon({this.color, this.iconName, this.size = 20.0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipOval(
      child: Container(
        color: this.color,
        padding: EdgeInsets.all(10),
        child: Icon(
          this.iconName,
          size: 20.0,
          color: Color.fromRGBO(255, 211, 67, 1.0),
        ) ,
      ),
    );
  }
}