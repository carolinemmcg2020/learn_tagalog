import 'package:flutter/material.dart';
import 'package:learn_tagalog/widgets/theme_background_color.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: ThemeColor(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Text('Login')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
