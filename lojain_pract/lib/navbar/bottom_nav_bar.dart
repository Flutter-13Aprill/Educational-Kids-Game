import 'package:flutter/material.dart';
import 'package:lojain_pract/screens/challenges.dart';
import 'package:lojain_pract/screens/exercises.dart';
import 'package:lojain_pract/screens/home.dart';
import 'package:lojain_pract/screens/login.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lojain_pract/screens/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // حطي كل الصفحات هنا
  final List<Widget> _pages = [
    ExercisesScreen(),
    ProfileScreen(),
    HomeScreen(),
    LoginScreen(),
  ];

  // لما المستخدم يضغط على أيقونة في البار
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'Challenges'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Rewards'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
