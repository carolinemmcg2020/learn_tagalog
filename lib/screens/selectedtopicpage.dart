import 'package:flutter/material.dart';
import 'package:learn_tagalog/models/category.dart';
import 'package:learn_tagalog/screens/lessondetail.dart';
import 'package:learn_tagalog/widgets/categoryicon.dart';
//TODO DELETE THIS
class SelectedTopicPage extends StatelessWidget{

  Category selectedTopic;

  SelectedTopicPage({this.selectedTopic});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Center(
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CategoryIcon(
                      color: this.selectedTopic.color,
                      iconName: this.selectedTopic.icon,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      this.selectedTopic.name,
                      style: TextStyle(
                        color: this.selectedTopic.color,
                        fontSize: 20.0
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                    child:GridView.count(
                      crossAxisCount: 2,
                      children: List.generate(
                          this.selectedTopic.lessons.length,
                              (index){
                        return GestureDetector(
                          onTap: (){
                            // TODO navigate to the details page
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LessonDetail(lessons: this.selectedTopic.lessons[index],
                                    ),
                                ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                              child: Column(
                               children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 10),
                                  height: 140,
                                  width: 170,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    color: this.selectedTopic.lessons[index].color,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          this.selectedTopic.lessons[index].icon,
                                          size: 40.0,
                                          color: this.selectedTopic.lessons[index].backgroundColor,
                                        ),
                                        Text(this.selectedTopic.lessons[index].name,
                                          style: TextStyle(
                                              color: this.selectedTopic.lessons[index].backgroundColor
                                          )
                                          ,)
                                        ,
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      ),
                    ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}