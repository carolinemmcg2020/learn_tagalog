import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_tagalog/services/notificaiton_api.dart';
import 'package:learn_tagalog/widgets/theme_background_color.dart';

import '../bottom_nav_bar.dart';

class Reminder extends StatefulWidget {
  @override
  _ReminderState createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  double _value = 0;

  @override
  void initState() {
    NotificationApi.init();
    listenNotifications();
    super.initState();
  }
  void listenNotifications() =>
      NotificationApi.onNotifications.stream.listen(onClickedNotification);

  void onClickedNotification(String payload) =>
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomNavBar()));

  String getTimeStringFromDouble(double value) {
    if (value < 0) return 'Invalid Value';
    int flooredValue = value.floor();
    double decimalValue = value - flooredValue;
    String hourValue = getHourString(flooredValue);
    String minuteString = getMinuteString(decimalValue);

    return '$hourValue:$minuteString';
  }

  String getMinuteString(double decimalValue) {
    return '${(decimalValue * 60).toInt()}'.padLeft(2, '0');
  }

  String getHourString(int flooredValue) {
    return '${flooredValue % 24}'.padLeft(2, '0');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ThemeColor(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 250.0,
                    child: Center(
                      child: Text(
                        'Reminder',
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 10.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            FontAwesomeIcons.times,
                            size: 40.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Text(
                  'What time would you like set your daily reminders?',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 80.0,
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  inactiveTrackColor: Colors.red,
                ),
                child: Slider(
                  value: _value,
                  min: 0,
                  max: 24,
                  divisions: 96,
                  label: getTimeStringFromDouble(_value),
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Text(
                  getTimeStringFromDouble(_value),
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: Colors.amber,
                  ),
                ),
              ),
              SizedBox(
                height: 60.0,
                width: 200,
                child: ElevatedButton(
                  //TODO: Fix this
                  onPressed: () {
                    print('notification pressed');
                    // NotificationApi.showNotification(
                    //     title: 'test reminder',
                    //     body: 'Don\'t forget to put in some time to study',
                    //     payload: 'this is a payload'
                    // );
                    NotificationApi.showScheduledNotification(
                      title: 'Scheduled Notification',
                      body: 'Time to start a lesson!',
                      payload: 'scheduled_payload',
                      scheduledDate: DateTime.now().add(Duration(seconds: 2))
                    );

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Scheduled in 2 seconds', style: TextStyle(fontSize: 20.0),),
                      ),
                    );
                  },
                  child: Text(
                    'Set Reminder',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
