
//import the packages & pages
import 'package:educational_kids_game/Pages/home_page.dart';
import 'package:flutter/material.dart';

//home screen  class
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // current index 0 represnt Home
  int _currentIndex = 0;

  // pages 
  final List<Widget> _pages = [
    HomePage(),        
    Placeholder(),         
    Placeholder(),             
    Placeholder(),   
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 246, 243),
        //start with safearea
        body: SafeArea(child: _pages[_currentIndex]),
        //coustmaize bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.amber,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black54,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          //elemants of navigation bar
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.track_changes_rounded),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}

