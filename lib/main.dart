import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart' as firebase;
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:learn_tagalog/layout/header_page.dart';
import 'package:learn_tagalog/services/loginservice.dart';
import 'package:provider/provider.dart';
import 'bottom_nav_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart' as firestore;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await firebase.Firebase.initializeApp();
  await Settings.init(cacheProvider: SharePreferenceCache());

  runApp(
    Provider(
      create: (_) => LoginService(),
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
            ? ThemeData.dark().copyWith(
                //primaryColor: Colors.deepPurpleAccent,
                brightness: Brightness.dark,
                accentColor: Colors.white,
                canvasColor: Colors.transparent,
                snackBarTheme: SnackBarThemeData(
                  backgroundColor: Colors.deepPurpleAccent,
                  elevation: 40,
                  actionTextColor: Colors.white,
                  disabledActionTextColor: Colors.white,
                ),
              )
            : ThemeData.light().copyWith(
                primaryColor: Colors.white,
                brightness: Brightness.light,
                accentColor: Colors.orange,
                canvasColor: Colors.transparent,
              ),
        home: BottomNavBar(),
      ),
    );
  }
}
