import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  String hintText;
  IconData icon;
  String labelText;

  CustomTextField({this.hintText, this.icon, this.labelText});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: hintText,
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ),
                labelText: labelText,
              ),
            ),
          ),
        ],
      ),

    );
  }
}