import 'package:educational_kids_game/screens/challenges_screen.dart';
import 'package:educational_kids_game/screens/home_screen.dart';
import 'package:educational_kids_game/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbarScreen> {
  int currentIndex = 0;
  List<Widget> widgetList = const [
    HomeScreen(),
    ChallengesScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: widgetList),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0x66C4C4C4),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 40,
              color: currentIndex == 0 ? Color(0xFF4CAF50) : Colors.grey[800],
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              BootstrapIcons.bullseye,
              size: 30,
              color: currentIndex == 1 ? Colors.red : Colors.grey[800],
            ),

            label: 'Challenges',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 40,
              color: currentIndex == 2 ? Color(0xFF42A5F5) : Colors.grey[800],
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
