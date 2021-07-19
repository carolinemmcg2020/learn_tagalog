import 'package:flutter/material.dart';


class Collection extends StatefulWidget{
  @override
  _CollectionState createState() => _CollectionState();
}

class _CollectionState extends State<Collection>{

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
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(child: Text('Collection Library', style: TextStyle(fontSize:20.0),))
            ],
          ),
        ),
      ),
    );
  }

}