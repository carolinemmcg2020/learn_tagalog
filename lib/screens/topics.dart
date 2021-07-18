import 'package:flutter/material.dart';
import 'package:learn_tagalog/helpers/utils.dart';
import 'package:learn_tagalog/models/category.dart';
import 'package:learn_tagalog/screens/lessondetail.dart';
import 'package:learn_tagalog/widgets/lessoncard.dart';

class Topics extends StatelessWidget{

  List<Category> categories = Utils.getMockedCategories();


  Category selectedCategory;
  Topics({this.selectedCategory});


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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text('Topics',
                  style: TextStyle(fontSize:20.0),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                    itemCount: categories.length,
                    itemBuilder: (BuildContext context, int index){
                      return Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  categories[index].name,
                                  style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
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
                                  itemBuilder: (BuildContext context, int ind){
                                    return LessonCard(
                                      lesson: categories[index].lessons[ind],
                                      onCardClick: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => LessonDetail(lessons: categories[index].lessons[ind],),
                                            )
                                        );
                                      },
                                    );
                                  }
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