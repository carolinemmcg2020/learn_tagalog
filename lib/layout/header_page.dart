import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:learn_tagalog/layout/icon_widget.dart';

class HeaderPage extends StatelessWidget{

  static const keyDarkMode = 'key-dark-mode';

  @override
  Widget build(BuildContext context) => Column(
    children: [
      buildHeader(),
      const SizedBox(height: 32,),
     buildUser(context),
      buildDarkMode(),
    ],
  );


  Widget buildDarkMode() => SwitchSettingsTile(
    settingKey: keyDarkMode,
    leading: IconWidget(
      icon: Icons.data_usage_rounded,
      color: Color(0xFF642ef3),
    ),
    title: 'Dark Mode',
    onChange: (_){},
  );

  Widget buildUser(BuildContext context) => SimpleSettingsTile(
    title: "User Name",
    subtitle: 'User Details',
    leading: IconWidget(icon: Icons.person, color: Colors.pink,),
    onTap: () => ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Clicked User Profile'),
      ),
    ),
    child: SettingsScreen(
      children: [
        buildUserDetails(context)
      ],
    ),
  );

  Widget buildHeader() => Center(
    child: Text(
        'Profile',
    style: TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      ),
    ),

  );

  Widget buildUserDetails(BuildContext context) => SimpleSettingsTile(
    title: 'User Details',
    subtitle: '',
    leading: IconWidget(icon: Icons.book, color: Colors.blue,),
    onTap: () => ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Clicked User Details'),
      ),
    ),
  );
}