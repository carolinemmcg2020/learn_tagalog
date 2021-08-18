import 'package:flutter/material.dart';
import 'package:learn_tagalog/helpers/utils.dart';
import 'package:learn_tagalog/models/lesson.dart';
import 'package:learn_tagalog/models/topic.dart';
import 'package:learn_tagalog/utilities/collection_logic.dart';
import 'package:learn_tagalog/widgets/custom_lesson_icon.dart';
import 'package:learn_tagalog/widgets/theme_background_color.dart';

class Collection extends StatefulWidget {
  final List<Topic> collectionContent = Utils.getMockedCategories();

  @override
  _CollectionState createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  CollectionLogic collectionLogic;

  @override
  void initState() {
    super.initState();
    collectionLogic = CollectionLogic();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: ThemeColor(
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
                  itemCount: widget.collectionContent.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15.0, top: 15.0),
                                child: Text(
                                  widget.collectionContent[index].name,
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
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: widget
                                  .collectionContent[index].lessons.length,
                              itemBuilder: (BuildContext context, int ind) {
                                Lesson collectionContents = widget
                                    .collectionContent[index].lessons[ind];
                                return Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 15.0,
                                                bottom: 5.0,
                                                top: 5.0),
                                            child: Text(
                                              widget.collectionContent[index]
                                                  .lessons[ind].name,
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
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          itemCount: collectionContents
                                              .lessonContent.length,
                                          itemBuilder: (BuildContext context,
                                              int contentIndex) {
                                            return Container(
                                              child: Expanded(
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(12.0),
                                                      child: CustomLessonIcon(
                                                        icon: collectionContents
                                                            .lessonContent[
                                                                contentIndex]
                                                            .icon,
                                                        iconColor:
                                                            collectionContents
                                                                .lessonContent[
                                                                    contentIndex]
                                                                .color,
                                                        iconSize: 35.0,
                                                        glowRadius: 25.0,
                                                        onTap: () {
                                                          collectionLogic.playAudio(
                                                              collectionContents
                                                                  .lessonContent[
                                                                      contentIndex]
                                                                  .audio);
                                                        },
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 40,
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        collectionContents
                                                            .lessonContent[
                                                                contentIndex]
                                                            .name,
                                                        style: TextStyle(
                                                            fontSize: 18.0),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        collectionContents
                                                            .lessonContent[
                                                                contentIndex]
                                                            .engWord,
                                                        style: TextStyle(
                                                            fontSize: 18.0),
                                                        textAlign:
                                                            TextAlign.center,
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
