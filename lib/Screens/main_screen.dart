import 'package:flutter/material.dart';
import 'package:project3/Screens/challenges_tab.dart';
import 'package:project3/Screens/profile_tab.dart';
import 'package:project3/Screens/settings_tab.dart';
import 'package:project3/Screens/verbal_skills_tab.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    VerbalSkillsTab(),
    ProfileTab(),
    ChallengesTab(),
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
            label: 'Home',
            backgroundColor: Color.fromRGBO(229, 229, 229, 0.8),
            activeIcon: Icon(
              Icons.home,
              color: Color.fromRGBO(65, 172, 120, 1),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            label: 'Profile',
            activeIcon: Icon(
              Icons.person,
              color: Color.fromRGBO(65, 172, 120, 1),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events, color: Colors.grey),
            label: 'Challenges',
            activeIcon: Icon(
              Icons.emoji_events,
              color: Color.fromRGBO(65, 172, 120, 1),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.grey),
            label: 'Settings',
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
