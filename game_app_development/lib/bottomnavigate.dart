import 'package:flutter/material.dart';
import 'package:game_app_development/challenges_page.dart';
import 'package:game_app_development/home_page.dart';
import 'package:game_app_development/profile_page.dart';

// This page contains a BottomNavigationBar for navigating between main sections of the app.
// Each icon represents a different page like Home, Challenges, or Profile.
// When a user taps on an icon, the displayed page changes based on the selected index.

class Bottomnavigate extends StatefulWidget {
  const Bottomnavigate({super.key});

  @override
  State<Bottomnavigate> createState() => _BottomnavigateState();
}

class _BottomnavigateState extends State<Bottomnavigate> {
   int myindex=0;
  List<Widget> pages=const[ 
   HomePage(), 
   ProfilePage(),
   ChallengesPage(),
   Center(child: Text('nothing here '),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[myindex],
      bottomNavigationBar: NavigationBar(
              selectedIndex: myindex,
              onDestinationSelected: (myindex) =>setState(()=>this.myindex = myindex),
              destinations: [
              NavigationDestination(icon: Icon(Icons.home),label: 'home',),
              NavigationDestination(icon: Icon(Icons.people_alt_rounded),label: 'profile',), 
              NavigationDestination(icon: Icon(Icons.track_changes),label: 'challenges',), 
              NavigationDestination(icon: Icon(Icons.settings),label: 'setting',),
              ]),
          

    );
  }
}