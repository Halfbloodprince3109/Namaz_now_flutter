import 'package:flutter/material.dart';

class MyNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onIndexChanged;

  const MyNavigationBar(
      {required this.currentIndex, required this.onIndexChanged});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF141833),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      onTap: onIndexChanged,
      selectedLabelStyle: TextStyle(
        fontSize: 16.0,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 14.0,
      ),
    );
  }
}
