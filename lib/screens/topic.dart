import 'package:flutter/material.dart';
import '../widgets/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'collection.dart';



class Homepage extends StatefulWidget{
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>{

  Container MyLessons(String category, String lesson, IconData icon, int index){
    return Container(
      width: 160.0,
        child: ReuseableCard(
          colour: Colors.blueAccent,
          colour2: Color(0xFF6908BF),
          onPress: (){
            // Navigator.of(context).pushReplacement(
            //   MaterialPageRoute(builder: (context) => ),
            //
            // );
          },
          cardChild: Wrap(
            children: [
              ListTile(
                title: Text(lesson, textAlign: TextAlign.center,),
              ),
              Container(
               margin: EdgeInsets.symmetric(horizontal:55.0, vertical: 6.0),
                  child: Icon(icon, size: 30.0, color: Colors.white, )
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
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF311136),
                Colors.deepPurpleAccent
              ]
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
                        child: Text('Foood',
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
                    child: Container(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          MyLessons('Food','Lesson 1', FontAwesomeIcons.plane,0),
                          MyLessons('Food','Lesson 2', FontAwesomeIcons.tractor,1),
                          MyLessons('Food','Lesson 3', FontAwesomeIcons.train,2),
                          MyLessons('Food','Lesson 4', FontAwesomeIcons.car,3),
                        ],
                      ),
                    )
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
                       MyLessons('Travel','Lesson 1', FontAwesomeIcons.plane,0),
                       MyLessons('Travel','Lesson 2', FontAwesomeIcons.tractor,1),
                       MyLessons('Travel','Lesson 3', FontAwesomeIcons.train,2),
                       MyLessons('Travel','Lesson 4', FontAwesomeIcons.car,3),
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
                       MyLessons('People','Lesson 1', FontAwesomeIcons.child, 0),
                       MyLessons('People','Lesson 2', FontAwesomeIcons.mandalorian, 1),
                       MyLessons('People','Lesson 3', FontAwesomeIcons.snowman, 2),
                       MyLessons('People','Lesson 4', FontAwesomeIcons.watchmanMonitoring, 3),
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
                       MyLessons('Places','Lesson 1', FontAwesomeIcons.child, 0),
                       MyLessons('Places','Lesson 2', FontAwesomeIcons.mandalorian, 1),
                       MyLessons('Places','Lesson 3', FontAwesomeIcons.snowman, 2),
                       MyLessons('Places','Lesson 4', FontAwesomeIcons.watchmanMonitoring, 3),
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
