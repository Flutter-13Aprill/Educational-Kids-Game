import 'package:educational_kids_game/Challange_Screen.dart';
import 'package:educational_kids_game/Profile_Screen.dart';
import 'package:educational_kids_game/Verbal_Skill_Screen.dart';
import 'package:flutter/material.dart';

class Skill_Screen extends StatefulWidget {
  @override
  State<Skill_Screen> createState() => _SkillScreenState();
}

class _SkillScreenState extends State<Skill_Screen> {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Challange_Screen()),
      );
    } else if (index == 2) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Profile_Screen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF6F2), // Background color for the screen
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20), // Top margin
            _buildTopBar(), // Custom top bar widget
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 100.0),
                child: Column(
                  children: [
                    // Skill sections with progress bars
                    _buildSkillSection(
                      title: 'Logical reasoning',
                      completed: 18,
                      total: 40,
                      progress: 18 / 40,
                    ),
                    SizedBox(height: 24),
                    _buildSkillSection(
                      title: 'Artistic thinking',
                      completed: 35,
                      total: 40,
                      progress: 35 / 40,
                    ),
                    SizedBox(height: 24),
                    _buildSkillSection(
                      title: 'Verbal skills',
                      completed: 3,
                      total: 40,
                      progress: 3 / 40,
                    ),
                    SizedBox(height: 40), // Extra bottom space
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // Bottom navigation bar with four items
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
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
        currentIndex:
            selectedIndex, // Tracks the selected index in the bottom nav
        unselectedItemColor: Colors.grey[700],
        backgroundColor: Colors.grey[300],
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 2.0,
        onTap: onItemTapped, // Updates the selected index when tapped
      ),
    );
  }

  // Builds the top bar with some stats and icons
  Widget _buildTopBar() {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 40),
              Icon(Icons.local_fire_department, color: Colors.orange, size: 28),
              SizedBox(width: 4),
              Text(
                '3',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.orange,
                ),
              ),
              SizedBox(width: 52),
              Icon(Icons.business_center, color: Colors.teal, size: 32),
              SizedBox(width: 4),
              Text(
                '1432 XP',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.teal,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.favorite, color: Colors.red, size: 28),
              SizedBox(width: 4),
              Text('∞', style: TextStyle(fontSize: 28, color: Colors.red)),
              SizedBox(width: 40),
            ],
          ),
        ],
      ),
    );
  }

  // Builds a section displaying the skill name, progress, and units
  Widget _buildSkillSection({
    required String title,
    required int completed,
    required int total,
    required double progress,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: TextStyle(fontSize: 36, color: Colors.black)),
              Row(
                children: [
                  Icon(Icons.emoji_events, color: Colors.amber[400], size: 24),
                  SizedBox(width: 4),
                  Text(
                    '$completed/$total',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: _buildUnitCard(progress: progress, title: title),
            ), // Progress card
            SizedBox(width: 16),
            Expanded(child: _buildLockedCard()), // Locked unit card
          ],
        ),
      ],
    );
  }

  // Builds a unit card with a progress bar
  Widget _buildUnitCard({required double progress, required String title}) {
    double cardHeight = 180.0;
    double progressBarHeight = 12.0;
    double iconSize = 24.0;
    return GestureDetector(
      onTap: () {
        if (title == 'Verbal skills') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Verbal_Skill_Screen()),
          );
        }
        // Add more navigation conditions for other titles if needed
      },
      child: Container(
        height: cardHeight,
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Unit 1', style: TextStyle(fontSize: 24, color: Colors.black)),
            Row(
              children: [
                Icon(
                  Icons.emoji_events,
                  color: Colors.amber[400],
                  size: iconSize,
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: progressBarHeight,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(
                            progressBarHeight / 2,
                          ),
                        ),
                      ),
                      FractionallySizedBox(
                        widthFactor: progress,
                        child: Container(
                          height: progressBarHeight,
                          decoration: BoxDecoration(
                            color: Colors.amber[400],
                            borderRadius: BorderRadius.circular(
                              progressBarHeight / 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Builds a locked unit card with a lock icon
  Widget _buildLockedCard() {
    double cardHeight = 180.0;
    return Container(
      height: cardHeight,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.grey[400]!, width: 1),
      ),
      child: Center(
        child: Icon(
          Icons.lock,
          color: Colors.grey[600],
          size: 50.0,
        ), // Lock icon
      ),
    );
  }
}
