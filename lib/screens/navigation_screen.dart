import 'package:flutter/material.dart';

// -- Screens
import 'package:educational_kids_game_app/screens/challenges_screen.dart';
import 'package:educational_kids_game_app/screens/home_screen.dart';
import 'package:educational_kids_game_app/screens/profile_screen.dart';

/// [NavigationScreen] handles navigation between the main screens of the app.
class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<StatefulWidget> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentScreenIndex = 0;

  static const List body = [HomeScreen(), ChallengesScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: body.elementAt(currentScreenIndex == 3 ? 2 :  currentScreenIndex),

      bottomNavigationBar: NavigationBar(
        destinations: [

          NavigationDestination(
            icon: Image.asset('assets/icons/navigation_bar_icons/Vector (9).png', color: currentScreenIndex == 0 ? Color(0xff41AC78) : Color(0xff757474)),
            label: "",
          ),

          NavigationDestination(
            icon: Image.asset('assets/icons/navigation_bar_icons/Vector (10).png', color: currentScreenIndex == 1 ? Color(0xffdc3f01) : Color(0xff757474)),
            label: "",
          ),

          NavigationDestination(
            icon: Image.asset('assets/icons/navigation_bar_icons/Vector (11).png', color: currentScreenIndex == 2 ? Color(0xffAB70DF) : Color(0xff757474)),
            label: "",
          ),

          // As we don't have the settings page in Figma design I made the last destination goes the to profile screen
          NavigationDestination(
            icon: Image.asset('assets/icons/navigation_bar_icons/Vector (12).png', color:Color(0xff757474)),
            label: "",
          ),
        ],
        selectedIndex: currentScreenIndex,
        onDestinationSelected: (index){
          setState(() {
            currentScreenIndex = index;
          });
        },
        backgroundColor:Color(0xffFBF5F2),
        indicatorColor: Colors.transparent,
        animationDuration: Duration(milliseconds: 500),
      ),
    );
  }
}
