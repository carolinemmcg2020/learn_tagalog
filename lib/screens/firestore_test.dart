import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:just_audio/just_audio.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final CollectionReference topic = FirebaseFirestore.instance.collection('Topic');
final DocumentReference travelDoc = FirebaseFirestore.instance.collection('Topic').doc('Travel');


class FireStoreTest extends StatefulWidget {
  @override
  _FireStoreTestState createState() => _FireStoreTestState();
}


class _FireStoreTestState extends State<FireStoreTest> {

  // Handles audio playback
  AudioPlayer player;

  @override
  void initState() {
    super.initState();
   // getTopics();
    // getTopicById();
    // getSubListByID();
    getSubList();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  // getTopics(){
  //   topic.get().then((QuerySnapshot snapshot) {
  //     snapshot.docs.forEach((DocumentSnapshot doc) {
  //       print(doc.data());
  //       print(doc.id);
  //       print(doc.exists);
  //       print(doc.get('category'));
  //     });
  //   });
  // }

  // getTopicById() {
  //   final String id = "Travel";
  //   topic.doc(id).get().then((DocumentSnapshot doc) {
  //     print(doc.data());
  //     print(doc.id);
  //     print(doc.exists);
  //
  //   });
  // }

  // getSubListByID(){
  //   topic.doc("Food").collection("food_one").get().then((QuerySnapshot snapshot){
  //     snapshot.docs.forEach((DocumentSnapshot doc) {
  //       print(doc.data());
  //       print(doc.id);
  //       print(doc.exists);
  //     });
  //   });
  // }

  getSubList() async {
    final QuerySnapshot snapshot = await topic.doc("Food").collection("food_one").get();

    // snapshot.docs.forEach((DocumentSnapshot doc) {
    //         print(doc.data());
    //         print(doc.id);
    //         print(doc.exists);
    //         print(doc.get('icon'));
    //       });
  }

  // TODO: Change this to firestore code
  /*
  void newLesson(){
    setState(() {
      if(lessonBrain.isFinished() == true){
        print('finished');
        lessonBrain.reset();
      }
      else{
        lessonBrain.nextLesson();
      }
    });

  }
  */



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.red.shade600, Colors.purple.shade300]
          ),
        ),

        // child: Column(
        //   children: [
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.end,
        //       children: [
        //         Container(
        //           padding: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 20.0),
        //           margin: EdgeInsets.symmetric(vertical: 20.0),
        //           child: Row(
        //             children: [
        //               GestureDetector(
        //                 onTap: () {
        //                   Navigator.pop(context);
        //                 },
        //                 child: Icon(FontAwesomeIcons.times,
        //                   size: 60.0,
        //                   color: Colors.white,
        //                 ),
        //               ),
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //     Container(
        //       padding: EdgeInsets.symmetric(vertical: 20.0),
        //       margin: EdgeInsets.symmetric(vertical: 100.0),
        //       child: Column(
        //         children: [
        //           Column(
        //             children: [
        //               GestureDetector(
        //                 onTap: () async {
        //                   await player.setAsset(topic.doc("Food").collection("food_one").doc("question_four").get('audio').toString());
        //                   player.play();
        //                   print('tapped');
        //                 },
        //                 child: Container(
        //                   child: Icon(
        //                     lessonBrain.getIcon(),
        //                     size: 160.0,
        //                     color: Colors.white,),
        //                 ),
        //               ),
        //               SizedBox(
        //                 height: 10,
        //               ),
        //               Text(lessonBrain.getTagalogText(),
        //                 style: TextStyle(
        //                   fontSize: 40.0,
        //                   fontWeight: FontWeight.bold,
        //                   color: Colors.white,
        //                 ),
        //               ),
        //               SizedBox(height: 10.0,
        //               ),
        //               Text(lessonBrain.getEnglishText(), style: TextStyle(
        //                   fontWeight: FontWeight.w500,
        //                   fontSize: 29.0,
        //                   color: Colors.white70
        //               ),
        //               ),
        //               FlatButton(
        //                 onPressed: (){
        //                   newLesson();
        //                   print('button pressed');
        //                 },
        //                 child: Text('Button'),
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),

      ),
    );
  }

}