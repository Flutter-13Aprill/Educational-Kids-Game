import 'package:educational_kids_game/screen/challenges_screen.dart';
import 'package:educational_kids_game/screen/profile_screen.dart';
import 'package:educational_kids_game/widget/home/home_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// HomeScreen with bottom navigation and dynamic body content
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Colors for active navigation icons
  List<Color> colors = [
    Color(0xff41AC78),
    Color(0xffDC3F00),
    Color(0xffAB70DF),
    Colors.black,
  ];

  int selectedindex = 0; // Tracks the current tab index

  // Corresponding widgets for each tab
  List<Widget> listWidget = [
    HomeBody(),
    ProfileScreen(),
    ChallengesScreen(),
    Center(child: Text("settings", style: GoogleFonts.roboto(fontSize: 30))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Bottom navigation bar with 4 tabs
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 35,
        currentIndex: selectedindex,

        onTap: (value) {
          selectedindex = value;
          setState(() {});
        },
        selectedItemColor: colors[selectedindex], // Set icon color based on tab

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.track_changes), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.people_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
        ],
      ),

      // Dynamic body content based on selected tab
      body: ListView(children: [listWidget.elementAt(selectedindex)]),
    );
  }
}
