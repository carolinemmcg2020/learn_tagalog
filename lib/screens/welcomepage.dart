import 'package:avatar_glow/avatar_glow.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:learn_tagalog/animation/delayed_animation.dart';
import 'package:learn_tagalog/services/loginservice.dart';
import 'package:provider/provider.dart';

import '../bottom_nav_bar.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  LoginService loginService;
  final int delayedAmount = 500;
  double _scale;
  AnimationController _controller;


  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  void loginViaGoogle() async {
  // function to implement the google signin

// creating firebase instance
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> signup(BuildContext context) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);

      // Getting users credential
      UserCredential result = await auth.signInWithCredential(authCredential);
      User user = result.user;

      if (result != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => BottomNavBar()));
      } // if result not null we simply call the MaterialpageRoute,
      // for go to the HomePage screen
    }
  }

  }

  @override
  Widget build(BuildContext context) {

  // final loginService = Provider.of<LoginService>(context, listen: false);

    final color = Colors.white;
    _scale = 1 - _controller.value;

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
              child: Center(
                child: Column(
                  children: <Widget>[
                    AvatarGlow(
                      endRadius: 90,
                      duration: Duration(seconds: 2),
                      glowColor: Colors.white24,
                      repeat: true,
                      repeatPauseDuration: Duration(seconds: 2),
                      startDelay: Duration(seconds: 1),
                      child: Material(
                        elevation: 8.0,
                        shape: CircleBorder(),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: FlutterLogo(
                            size: 50.0,
                          ),
                          radius: 50.0,
                        ),
                      ),
                    ),
                    DelayedAnimation(
                      child: Text(
                        "Hi There",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            color: color),
                      ),
                      delay: delayedAmount + 1000,
                    ),
                    DelayedAnimation(
                      child: Text(
                        "I'm Reflectly",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            color: color),
                      ),
                      delay: delayedAmount + 2000,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    DelayedAnimation(
                      child: Text(
                        "Your New Personal",
                        style: TextStyle(fontSize: 20.0, color: color),
                      ),
                      delay: delayedAmount + 3000,
                    ),
                    DelayedAnimation(
                      child: Text(
                        "Journaling  companion",
                        style: TextStyle(fontSize: 20.0, color: color),
                      ),
                      delay: delayedAmount + 3000,
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                    DelayedAnimation(
                      child: GestureDetector(
                        onTapDown: _onTapDown,
                        onTapUp: _onTapUp,
                        child: Transform.scale(
                          scale: _scale,
                          child: GestureDetector(
                            onTap: () {
                              //TODO: navigate to the right page
                              print('pressed sign up button');
                            },
                            child: _animatedButtonUI,
                          ),
                        ),
                      ),
                      delay: delayedAmount + 4000,
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    DelayedAnimation(
                      child: GestureDetector(
                        onTap: ()  {
                          //TODO: Navigate to the google auth callback

                         loginViaGoogle();
                          print('pressed sign in button');

                        },
                        child: Text(
                          "I Already have An Account".toUpperCase(),
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: color),
                        ),
                      ),
                      delay: delayedAmount + 5000,
                    ),
                  ],
                ),
              ),
            ),
          )
        //  Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     Text('Tap on the Below Button',style: TextStyle(color: Colors.grey[400],fontSize: 20.0),),
        //     SizedBox(
        //       height: 20.0,
        //     ),
        //      Center(

        //   ),
        //   ],

        // ),
      ),
    );
  }

  Widget get _animatedButtonUI =>
      Container(
        height: 60,
        width: 270,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Colors.white,
        ),
        child: Center(
          child: Text(
            'Hi Reflectly',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF8185E2),
            ),
          ),
        ),
      );

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}
