import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {

  ReuseableCard({@required this.colour, this.colour2, this.cardChild, this.onPress});

  final Color colour;
  final Color colour2;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            //color: colour,
            borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            colors: [
              colour,
              colour2
            ]
          )
        ),
      ),
    );
  }
}