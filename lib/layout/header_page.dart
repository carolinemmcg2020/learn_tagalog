import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_tagalog/layout/icon_widget.dart';
import 'package:learn_tagalog/models/loginusermodel.dart';
import 'package:learn_tagalog/services/email_login_service.dart';
import 'package:learn_tagalog/services/google_login_service.dart';
import 'package:provider/provider.dart';

class HeaderPage extends StatelessWidget {
  static const keyDarkMode = 'key-dark-mode';

  bool showProfilePic;

  HeaderPage({this.showProfilePic});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          buildHeader(),
          const SizedBox(
            height: 32,
          ),
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
        onChange: (_) {},
      );

  Widget buildUser(BuildContext context) {
    final GoogleLoginService loginService =
        Provider.of<GoogleLoginService>(context, listen: false);

    final EmailLoginService emailLoginService = Provider.of<EmailLoginService>(context, listen: false);

    LoginUserModel googleUserModel = loginService.loggedInUserModel;

    String imgPath = googleUserModel != null ? googleUserModel.photoUrl : '';
    String userName = googleUserModel != null ? googleUserModel.displayName : '';
    String userEmail = googleUserModel != null ? googleUserModel.email : '';

    bool showUserMapBadge = userName.isNotEmpty && userEmail.isNotEmpty;

    return this.showProfilePic && imgPath.isNotEmpty && showUserMapBadge
        ? SimpleSettingsTile(
            title: userName,
            subtitle: userEmail,
            leading: ClipOval(
              child: Image.network(imgPath),
            ),
            onTap: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Clicked User Profile'),
              ),
            ),
            child: SettingsScreen(
              children: [buildUserDetails(context)],
            ),
          )
        : SimpleSettingsTile(
            title: 'User Name',
            subtitle: 'User Email',
            leading: ClipOval(
              child: IconWidget(
                icon: FontAwesomeIcons.user,
                color: Colors.purpleAccent,
              ),
            ),
            onTap: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Clicked User Profile'),
              ),
            ),
            child: SettingsScreen(
              children: [buildUserDetails(context)],
            ),
          );
  }

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
        leading: IconWidget(
          icon: Icons.book,
          color: Colors.blue,
        ),
        onTap: () => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Clicked User Details'),
          ),
        ),
      );
}
