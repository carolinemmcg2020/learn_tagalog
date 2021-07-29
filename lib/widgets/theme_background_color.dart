import 'package:flutter/material.dart';

class ThemeColor extends StatelessWidget{

  Widget child;

  ThemeColor({this.child});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xFFCE2029),
            Color(0xFF1E419B),
          ],
        ),
      ),
      child: child,
    );
  }


}