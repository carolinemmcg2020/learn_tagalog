import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart' as firebase;
import 'package:flutter/services.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:learn_tagalog/screens/header_page.dart';
import 'package:learn_tagalog/screens/reminder_detail.dart';
import 'package:learn_tagalog/screens/welcomepage.dart';
import 'package:learn_tagalog/services/email_login_service.dart';
import 'package:learn_tagalog/services/google_login_service.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);

  await firebase.Firebase.initializeApp();
  await Settings.init(cacheProvider: SharePreferenceCache());


  runApp(
    MultiProvider(
      providers: [
        Provider(
          create: (_) => GoogleLoginService(),
        ),
        Provider<EmailLoginService>(
          create: (_) => EmailLoginService(FirebaseAuth.instance),
        )
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueChangeObserver<bool>(
      cacheKey: HeaderPage.keyDarkMode,
      defaultValue: true,
      builder: (_, isDarkMode, __) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Learn Tagalog',
        theme: isDarkMode
            ? ThemeData.light().copyWith(
                brightness: Brightness.dark,
                accentColor: Colors.white,
                canvasColor: Colors.transparent,
                snackBarTheme: SnackBarThemeData(
                  backgroundColor: Color.fromRGBO(0, 0, 0, 0.2),
                  elevation: 40,
                  contentTextStyle: TextStyle(color: Colors.white),
                ),
              )
            : ThemeData.dark().copyWith(
                primaryColor: Colors.blue,
                brightness: Brightness.light,
                accentColor: Colors.orange,
                canvasColor: Colors.transparent,
                snackBarTheme: SnackBarThemeData(
                  backgroundColor: Color.fromRGBO(0, 0, 0, 0.5),
                  elevation: 40,
                  contentTextStyle: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
        home: WelcomePage(),
      ),
    );
  }
}
