import 'package:flutter/material.dart';
import 'package:learn_tagalog/lesson_content.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);


class Homepage extends StatefulWidget{
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>{


  Container MyLessons(String lesson, IconData icon){
    return Container(
      width: 160.0,
        child: Card(
          color: Colors.cyan,
          child: Wrap(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal:50.0, vertical: 10.0),
                  child: Icon(icon, size: 60.0, )
              ),
              ListTile(
                title: Text(lesson, textAlign: TextAlign.center,),
              ),
            ],
          ),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.purple, Colors.teal]
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start ,
                children: <Widget>[
                  SizedBox(
                    height: 100.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('Food',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),),
                      ),
                    ],
                  ),
                  Container(
                    //padding: EdgeInsets.all(20.0),
                    //margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 140.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MyLessons('Lesson 1', FontAwesomeIcons.adversal),
                        MyLessons('Lesson 2', FontAwesomeIcons.adversal),
                        MyLessons('Lesson 3', FontAwesomeIcons.adversal),
                        MyLessons('Lesson 4', FontAwesomeIcons.adversal),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start ,
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Travel',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                      ),
                    ],
                  ),
                  Container(
                    //padding: EdgeInsets.all(20.0),
                    //margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 140.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MyLessons('Lesson 1', FontAwesomeIcons.plane),
                        MyLessons('Lesson 2', FontAwesomeIcons.tractor),
                        MyLessons('Lesson 3', FontAwesomeIcons.train),
                        MyLessons('Lesson 4', FontAwesomeIcons.car),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start ,
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Text('People',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                      ),
                    ],
                  ),
                  Container(
                    //padding: EdgeInsets.all(20.0),
                    //margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 140.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MyLessons('Lesson 1', FontAwesomeIcons.child),
                        MyLessons('Lesson 2', FontAwesomeIcons.mandalorian),
                        MyLessons('Lesson 3', FontAwesomeIcons.snowman),
                        MyLessons('Lesson 4', FontAwesomeIcons.watchmanMonitoring),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start ,
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Places',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                      ),
                    ],
                  ),
                  Container(
                    //padding: EdgeInsets.all(20.0),
                    //margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 140.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MyLessons('Lesson 1', FontAwesomeIcons.child),
                        MyLessons('Lesson 2', FontAwesomeIcons.mandalorian),
                        MyLessons('Lesson 3', FontAwesomeIcons.snowman),
                        MyLessons('Lesson 4', FontAwesomeIcons.watchmanMonitoring),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }

}