import 'package:flutter/material.dart';
import 'package:learn_tagalog/models/category.dart';

import 'categoryicon.dart';

class CategoryCard extends StatelessWidget{
  
  Function onCardClick;
  Category category;

  CategoryCard({this.category, this.onCardClick});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        this.onCardClick();
      },
      child: Container(
          margin: EdgeInsets.all(20.0),
          height: 150,
          child: Stack(
            children: [
              // Positioned.fill(
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.circular(20),
              //     child: Icon(categories[index].icon,
              //       color: Color.fromRGBO(186, 147, 10, 1.0),
              //       size: 40.0,
              //     ),
              //   ),
              // ),
              //Background Container
              Positioned(
                bottom:0,
                left: 0,
                right: 0,
                top: 0,
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        this.category.color,
                        this.category.backgroundColor,
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      CategoryIcon(
                        color: this.category.color,
                        iconName: this.category.icon,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        this.category.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}