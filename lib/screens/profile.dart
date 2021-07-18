import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:learn_tagalog/layout/account_page.dart';
import 'package:learn_tagalog/layout/header_page.dart';
import 'package:learn_tagalog/layout/icon_widget.dart';
import 'package:basic_utils/basic_utils.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.purple,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.purple, Colors.blue]),
        ),
        child: SafeArea(
          child: ListView(
            children: [
              SettingsGroup(
                title: '',
                children: <Widget>[
                  HeaderPage(),
                ],
              ),
              SettingsGroup(
                title: 'General',
                children: <Widget>[
                  AccountPage(),
                  buildLogout(),
                  buildDeleteAccount(),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              SettingsGroup(
                title: 'FEEDBACK',
                children: <Widget>[
                  const SizedBox(
                    height: 8,
                  ),
                  buildReportBug(context),
                  buildSendFeedback(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLogout() => SimpleSettingsTile(
      title: "Logout",
      subtitle: '',
      leading: IconWidget(
        icon: Icons.logout,
        color: Colors.blueAccent,
      ),
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Clicked Logout'),
          ),
        );
        Settings.clearCache();
      });

  Widget buildDeleteAccount() => SimpleSettingsTile(
        title: "Delete Account",
        subtitle: '',
        leading: IconWidget(
          icon: Icons.delete,
          color: Colors.pink,
        ),
        onTap: () => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Clicked Delete Account'),
          ),
        ),
      );

  Widget buildReportBug(BuildContext context) => SimpleSettingsTile(
        title: "Report Bug",
        subtitle: '',
        leading: IconWidget(
          icon: Icons.bug_report,
          color: Colors.cyan[800],
        ),
        onTap: () => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Clicked Report Bug'),
          ),
        ),
      );

  Widget buildSendFeedback(BuildContext context) => SimpleSettingsTile(
        title: "Send Feedback",
        subtitle: '',
        leading: IconWidget(
          icon: Icons.thumb_up,
          color: Colors.purple,
        ),
        onTap: () => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Clicked Send Feedback'),
          ),
        ),
      );
}
