import 'package:flutter/material.dart';
import 'package:project3/Screens/challenges_tab.dart';
import 'package:project3/Screens/home_tab.dart';
import 'package:project3/Screens/profile_tab.dart';
import 'package:project3/Screens/settings_tab.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomeTab(),
    ChallengesTab(),
    ProfileTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: "",
            backgroundColor: Color.fromRGBO(229, 229, 229, 0.8),
            activeIcon: Icon(
              Icons.home,
              color: Color.fromRGBO(65, 172, 120, 1),
            ),
          ),

          BottomNavigationBarItem(
            label: "",
            icon: ImageIcon(
              AssetImage('assets/images/dart_board.png', bundle: null),
              color: Colors.grey,
            ),
            activeIcon: ImageIcon(
              AssetImage("assets/images/dart_board.png", bundle: null),
              color: Color.fromRGBO(65, 172, 120, 1),
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.people, color: Colors.grey),
            activeIcon: Icon(
              Icons.people,
              color: Color.fromRGBO(65, 172, 120, 1),
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.settings, color: Colors.grey),
            activeIcon: Icon(
              Icons.settings,
              color: Color.fromRGBO(65, 172, 120, 1),
            ),
          ),
        ],
      ),
    );
  }
}
