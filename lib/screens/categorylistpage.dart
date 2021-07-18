import 'package:flutter/material.dart';
import 'package:learn_tagalog/helpers/utils.dart';
import 'package:learn_tagalog/models/category.dart';
import 'package:learn_tagalog/screens/selectedtopicpage.dart';
import 'package:learn_tagalog/widgets/categorycard.dart';
//TODO DELETE THIS
class CategoryListPage extends StatelessWidget {

  List<Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Text('Select a Topic',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 15, 92, 1.0),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.only(bottom: 50),
                      itemCount: categories.length,
                      itemBuilder: (BuildContext context, int index){
                        return CategoryCard(
                          category: categories[index],
                          onCardClick: () {
                            // TODO navigate to another page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SelectedTopicPage(
                                  selectedTopic: this.categories[index],
                                ),
                              ),
                            );
                          }
                        );
                      },
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