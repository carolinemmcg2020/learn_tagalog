import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart' as firebase;
import 'package:flutter/services.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:learn_tagalog/layout/header_page.dart';
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
      defaultValue: false,
      builder: (_, isDarkMode, __) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Learn Tagalog',
        theme: isDarkMode
            ? ThemeData.dark().copyWith(
                //TODO: themes are opposite
                brightness: Brightness.dark,
                accentColor: Colors.white,
                canvasColor: Colors.transparent,
                snackBarTheme: SnackBarThemeData(
                  backgroundColor: Colors.transparent,
                  elevation: 40,
                  //actionTextColor: Colors.red,
                  //disabledActionTextColor: Colors.red,
                ),
              )
            : ThemeData.light().copyWith(
                primaryColor: Colors.white,
                brightness: Brightness.light,
                accentColor: Colors.orange,
                canvasColor: Colors.transparent,

              ),
        home: WelcomePage(),
      ),
    );
  }
}
