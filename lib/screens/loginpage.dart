import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_tagalog/screens/welcomepage.dart';
import 'package:learn_tagalog/services/email_login_service.dart';
import 'package:learn_tagalog/widgets/custom_button.dart';
import 'package:learn_tagalog/widgets/custom_textfield.dart';
import 'package:learn_tagalog/widgets/theme_background_color.dart';
import 'package:provider/provider.dart';

import '../bottom_nav_bar.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    final EmailLoginService emailLoginService = Provider.of<EmailLoginService>(context, listen: false);

    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: ThemeColor(
          child: SafeArea(
            child: Center(
              child: Column (
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
              this.email = value.trim();
            },
          ),
          CustomTextField(
            hintText: 'paSsWorD123',
            icon: FontAwesomeIcons.lock,
            labelText: 'Password',
            obscureText: true,
            onChanged: (value){
              password = value.trim();
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
                //TODO: Make class which stores username, email and password
                onTap: () async {
                  //FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
                  await emailLoginService.signInWithEmail(email: email, password: password);
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => BottomNavBar(),
                    ),
                  );
                },
                child: CustomButton(
                  buttonText: 'Login',
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
      ),
    );
  }
}
