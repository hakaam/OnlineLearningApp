import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.black54,
      unselectedItemColor: Colors.black54,
      showSelectedLabels: true,
      unselectedLabelStyle: TextStyle(
        color: Colors.black54,
      ),
      unselectedFontSize: 14,
      unselectedIconTheme: IconThemeData(
        color: Colors.black54,
        size: 20,
      ),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.leaderboard), label: 'Subject'),

        BottomNavigationBarItem(icon: Icon(Icons.file_copy), label: 'Subject'),

        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My'),
      ],
    );
  }
}
