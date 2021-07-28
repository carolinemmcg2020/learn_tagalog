import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_tagalog/bottom_nav_bar.dart';
import 'package:learn_tagalog/screens/welcomepage.dart';
import 'package:learn_tagalog/widgets/custom_button.dart';
import 'package:learn_tagalog/widgets/custom_textfield.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with SingleTickerProviderStateMixin {

  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'/homepage': (context) => BottomNavBar()},
      home: Scaffold(
        //backgroundColor: Color(0xFF8185E2),
        resizeToAvoidBottomInset: false,
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
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Please enter your details below",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 60,
                ),
                CustomTextField(
                  hintText: 'abcd123@email.com',
                  icon: FontAwesomeIcons.font,
                  labelText: 'Email',
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value){
                    _email = value.trim();
                  },
                ),
                CustomTextField(
                  hintText: 'paSsWorD123',
                  icon: FontAwesomeIcons.lock,
                  labelText: 'Password',
                  obscureText: true,
                  onChanged: (value){
                    _password = value.trim();
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SizedBox(
                    width: 200,
                    child: GestureDetector(
                      //TODO: Validation Check to see if the text fields are populated
                      onTap: () {
                        FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => BottomNavBar(),
                          ),
                        );
                      },
                      child: CustomButton(
                        buttonText: 'Sign Up',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SizedBox(
                    width: 200,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => WelcomePage(),
                          ),
                        );
                      },
                      child: CustomButton(
                        buttonText: 'Cancel',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
