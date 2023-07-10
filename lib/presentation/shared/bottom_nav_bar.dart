import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.indigo,
      unselectedIconTheme: IconThemeData(
        color: Colors.white24,
      ),
      showSelectedLabels: false,
      selectedIconTheme: IconThemeData(
        size: 32,
      ),
      unselectedItemColor: Colors.white60,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.groups_sharp), label: 'Clients'),
        BottomNavigationBarItem(
            icon: Icon(Icons.toc_sharp), label: 'Projects'),
      ],
    );
  }
}