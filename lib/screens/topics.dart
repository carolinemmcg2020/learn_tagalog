import 'package:flutter/material.dart';
import 'package:flutter_alert/flutter_alert.dart';
import 'package:learn_tagalog/helpers/utils.dart';
import 'package:learn_tagalog/models/category.dart';
import 'package:learn_tagalog/screens/lessondetail.dart';
import 'package:learn_tagalog/widgets/lessoncard.dart';
import 'package:learn_tagalog/widgets/theme_background_color.dart';

class Topics extends StatelessWidget {
  List<Category> categories = Utils.getMockedCategories();

  Category selectedCategory;

  Topics({this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ThemeColor(
        /* decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF311136),
              Colors.deepPurpleAccent,
            ],
          ),
        ),*/
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Topics',
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  categories[index].name,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 170,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              physics: ClampingScrollPhysics(),
                              padding: EdgeInsets.only(
                                left: 10.0,
                                right: 10.0,
                                bottom: 10.0,
                              ),
                              shrinkWrap: true,
                              itemCount: categories[index].lessons.length,
                              itemBuilder: (BuildContext context, int ind) {
                                return LessonCard(
                                  lesson: categories[index].lessons[ind],
                                  onCardClick: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext alertContext) {
                                        return AlertDialog(
                                          title: Text('Are you sure?'),
                                          content: Text(
                                              'Are you ready to take this lesson?'),
                                          actions: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                FlatButton(
                                                  child: Text('Yes'),
                                                  onPressed: () {
                                                    //TODO: fill me in, send me to lesson page
                                                    Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (alertContext) =>
                                                            LessonDetail(
                                                              lessons: categories[index]
                                                                  .lessons[ind],
                                                            ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                                FlatButton(
                                                  child: Text('No'),
                                                  onPressed: () {
                                                    //TODO: Close Alert
                                                    Navigator.of(alertContext,
                                                        rootNavigator: true)
                                                        .pop();
                                                  },
                                                ),
                                              ],
                                            )
                                          ],
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
