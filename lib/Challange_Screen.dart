import 'package:educational_kids_game/Profile_Screen.dart';
import 'package:educational_kids_game/Skill_Screen.dart';
import 'package:flutter/material.dart';

// Stateful widget for the Challenge screen
class Challange_Screen extends StatefulWidget {
  @override
  State<Challange_Screen> createState() => _ChallangeScreenState();
}

class _ChallangeScreenState extends State<Challange_Screen> {
  int selectedIndex = 1; // Default selected index for BottomNavigationBar

  // Handle bottom navigation tap events
  void _onItemTapped(int index) {
    if (index == 0) {
      // Navigate to Skill screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Skill_Screen()),
      );
    } else if (index == 2) {
      // Navigate to Profile screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Profile_Screen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF6F2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              // Header for Challenge section
              Container(
                color: Colors.grey[200],
                width: double.infinity,
                height: 50,
                child: Center(
                  child: Text('Challenges', style: TextStyle(fontSize: 28)),
                ),
              ),
              SizedBox(height: 34),
              // Main challenge tile
              Container(
                height: 120,
                width: 340,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                  color: Color(0xFFFAF6F2),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey[300]!, width: 3.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFFAF6F2),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    // Challenge image
                    Image.asset('assets/Challange.png', height: 100, width: 80),
                    SizedBox(width: 12),
                    // Challenge description
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Complete 1000 word streak',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Win 1000XP along with 300 diamonds.',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              // Achievements title
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 34),
                child: Text(
                  'Achievements',
                  style: TextStyle(fontSize: 32),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 24),
              // Individual achievement tiles
              _achievementTile(
                'assets/Learn1.png',
                'Lorem Ipsum',
                'is simply dummy text of the printing and typesetting industry.',
              ),
              SizedBox(height: 24),
              _achievementTile(
                'assets/Learn2.png',
                'Lorem Ipsum',
                'is simply dummy text of the printing and typesetting industry.',
              ),
              SizedBox(height: 24),
              _achievementTile(
                'assets/Learn3.png',
                'Lorem Ipsum',
                'is simply dummy text of the printing and typesetting industry.',
              ),
            ],
          ),
        ),
      ),
      // Bottom navigation for screen switching
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.grey[200],
        elevation: 5,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 30),
            activeIcon: Icon(Icons.home, color: Colors.green, size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes_outlined, size: 30),
            activeIcon: Icon(
              Icons.track_changes,
              color: Colors.red[700],
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline, size: 30),
            activeIcon: Icon(Icons.people, color: Colors.purple[900], size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined, size: 30),
            activeIcon: Icon(Icons.settings, size: 30),
            label: '',
          ),
        ],
      ),
    );
  }

  // Reusable widget for achievement tiles
  Widget _achievementTile(String imagePath, String title, String subtitle) {
    return Container(
      height: 120,
      width: 340,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: Color(0xFFFAF6F2),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!, width: 3.0),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFFAF6F2),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Achievement image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              height: 100,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          // Achievement text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
