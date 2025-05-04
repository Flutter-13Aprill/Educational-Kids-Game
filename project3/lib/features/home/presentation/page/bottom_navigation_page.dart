import 'package:flutter/material.dart';
import 'package:project3/features/Challenges/page/challenges_page.dart';
import 'package:project3/features/Profile/page/profile_page.dart';
import 'package:project3/features/home/presentation/page/home_page.dart';
import 'package:project3/features/home/presentation/widget/custom_bottom_navigation_bar.dart';
import 'package:project3/features/settings/page/settings_page.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    ChallengesPage(),
    ProfilePage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
