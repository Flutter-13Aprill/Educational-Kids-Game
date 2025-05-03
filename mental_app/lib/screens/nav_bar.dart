import 'package:flutter/material.dart';
import 'package:mental_app/screens/challenges_screen.dart';
import 'package:mental_app/screens/home_screen.dart';
import 'package:mental_app/screens/profile_screen.dart';
import 'package:mental_app/screens/setting_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    ChallengesScreen(),
    ProfileScreen(),
    SettingScreen(),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
backgroundColor: Color(0xCCE5E5E5),
selectedFontSize: 0,
  unselectedFontSize: 0,

        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items:  [
          BottomNavigationBarItem( icon: Image.asset(
            _currentIndex == 0
             ? "lib/assets/icons/house_activated.png"
             : "lib/assets/icons/house.png",
            width:24, 
            height:24,
          ), 
          label: '',
          ),
           BottomNavigationBarItem( icon: Image.asset(
           _currentIndex  == 1
            ? "lib/assets/icons/target_activated.png"
            : "lib/assets/icons/target.png", 
            width:24, 
            height:24,
          ), 
          label: '',
          ),
           BottomNavigationBarItem( icon: Image.asset(
            _currentIndex == 2
            ? "lib/assets/icons/profile_activated.png"
            : "lib/assets/icons/profile.png", 
            width:24, 
            height:24,
          ), 
          label: '',
          ),
           BottomNavigationBarItem( icon: Image.asset(
            "lib/assets/icons/settings_icon.png", 
            width:24, 
            height:24,
          ), 
          label: '',
          ),
         
           ],
           ),
      ),
   );
  }
}