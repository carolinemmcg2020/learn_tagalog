import 'package:flutter/material.dart';
import 'package:learn_tagalog/helpers/utils.dart';
import 'package:learn_tagalog/models/topic.dart';
import 'package:learn_tagalog/widgets/theme_background_color.dart';


class Collection extends StatefulWidget {
/*
  Lesson collectionContent;

  Collection({this.collectionContent});
*/

  @override
  _CollectionState createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  List<Topic> collectionContent = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ThemeColor(
        /*decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Colors.red.shade600,
              Colors.purple.shade300,
            ],
          ),
        ),*/
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  'Collection Library',
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: collectionContent.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, top: 15.0),
                                child: Text(
                                  collectionContent[index].name,
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: ClampingScrollPhysics(),
                              itemCount: collectionContent[index].lessons.length,
                              itemBuilder: (BuildContext context, int ind) {
                                return Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15.0,
                                                bottom: 5.0,
                                                top: 5.0),
                                            child: Text(
                                              collectionContent[index]
                                                  .lessons[ind]
                                                  .name,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 20.0,
                                                  color: Colors.yellow),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          itemCount:
                                              collectionContent[index].lessons.length,
                                          itemBuilder: (BuildContext context,
                                              int contentIndex) {
                                            return Container(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(15.0),
                                                child: Expanded(
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Icon(
                                                          collectionContent[index].lessons[contentIndex].icon,
                                                          size: 35.0,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 40,
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Text(
                                                          collectionContent[index].lessons[contentIndex].name,
                                                          style: TextStyle(
                                                              fontSize: 18.0),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Text(
                                                          'english word',
                                                          style: TextStyle(
                                                              fontSize: 18.0),
                                                        ),
                                                      ),
                                                      // SizedBox(
                                                      //   width: 30,
                                                      // ),
                                                      // Padding(
                                                      //   padding: const EdgeInsets.all(8.0),
                                                      //   child: Expanded(
                                                      //     child: TextButton(
                                                      //       onPressed: () {},
                                                      //       child: Icon(
                                                      //         FontAwesomeIcons
                                                      //             .playCircle,
                                                      //         size: 35.0,
                                                      //       ),
                                                      //     ),
                                                      //   ),
                                                      // ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
