import 'package:flutter/material.dart';
import 'package:project3/screens/challenges_screen.dart';
import 'package:project3/screens/home_courses_screen.dart';
import 'package:project3/screens/profile_screen.dart';


//the user will get here after logging
//he will choose from the icons in the bottom to go to the page they desire 
//and this code will handle their choice

class PageHandler extends StatefulWidget {
  const PageHandler({super.key});

  @override
  State<PageHandler> createState() => _PageHandlerState();
}

class _PageHandlerState extends State<PageHandler> {
  int selectedIndex = 0;



  void pageHandler(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
// here where tha pages are handled there is 2 home screens because there is no setting page in the requirements
// so they will go back to home screen if they choose setting
//instead of going through null pagee 
  final List<Widget> pages = [
    HomeCoursesScreen(),

    ChallengesScreen(),
    ProfileScreen(),
    HomeCoursesScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //here where the page is shown depending on the user choice 
      body: pages[selectedIndex],





      //here where the icons in the bottomNavigationBar and the page number are created and handled
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        onTap: pageHandler,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),

          BottomNavigationBarItem(icon: Icon(Icons.stars), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: ''),

          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
      ),
    );
  }
}
