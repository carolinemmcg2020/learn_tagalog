import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_tagalog/widgets/custom_textfield.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Color(0xFF8185E2),
        body: Container(
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
          child: SafeArea(
            child: Column(
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Please enter your details below",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  hintText: 'abcd123@email.com',
                  icon: FontAwesomeIcons.font,
                  labelText: 'Email',
                ),
                SizedBox(
                  height: 40,
                ),
                CustomTextField(
                  hintText: 'paSsWorD123',
                  icon: FontAwesomeIcons.lock,
                  labelText: 'Password',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
