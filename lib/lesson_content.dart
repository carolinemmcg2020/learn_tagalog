import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
    fontSize: 15.0,
    color: Color(0xFF8D8E98,
    ));

class LessonContent extends StatelessWidget {

  LessonContent({@required this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 60.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}