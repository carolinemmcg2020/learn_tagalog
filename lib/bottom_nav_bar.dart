import 'package:flutter/material.dart';
import 'package:learn_tagalog/screens/collection.dart';
import 'package:learn_tagalog/screens/profile.dart';
import 'package:learn_tagalog/screens/topics.dart';

class BottomNavBar extends StatefulWidget {

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final _pageOptions = [
    Topics(),
    Collection(),
    Profile(),
  ];

  static const List<Widget> _pages = <Widget>[
    Icon(
      Icons.home,
      size: 150,
    ),
    Icon(
      Icons.pages,
      size: 150,
    ),
    Icon(
      Icons.person_rounded,
      size: 150,
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pageOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF102C7D),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Topics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            label: 'Collection',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
