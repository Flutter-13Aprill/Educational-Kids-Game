import 'package:flutter/material.dart';
class Verbal_Skill_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF6F2),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top padding
            SizedBox(height: 40),
            // Header bar with title and icon stats
            Container(
              padding: EdgeInsets.symmetric(horizontal: 44, vertical: 6),
              color: Colors.grey[200],
              child: Row(
                children: [
                  // Title
                  Expanded(
                    child: Text(
                      'Verbal skills',
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  // Trophy icon with count
                  Icon(Icons.emoji_events, color: Colors.amber, size: 30),
                  SizedBox(width: 4),
                  Text(
                    '3',
                    style: TextStyle(color: Colors.amber, fontSize: 18),
                  ),

                  SizedBox(width: 12),

                  // Diamond icon with count
                  Icon(Icons.diamond, color: Colors.blue, size: 30),
                  SizedBox(width: 4),
                  Text(
                    '213',
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  ),

                  SizedBox(width: 30),
                ],
              ),
            ),

            SizedBox(height: 50),

            // Unit Card with progress bar and decorative horse image
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // Unit info container
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey, width: 2),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 30),
                        Text(
                          'Unit 1',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),

                        // Progress bar with label
                        Row(
                          children: [
                            Icon(Icons.emoji_events, color: Colors.amber),
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: LinearProgressIndicator(
                                  value: 0.075,
                                  backgroundColor: Colors.grey[600],
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.amber,
                                  ),
                                  minHeight: 8,
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              '3/40',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Positioned horse image (top-right over unit card)
                  Positioned(
                    right: 60,
                    top: -45,
                    child: Image.asset('assets/Horse.png', height: 90),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Skills section with icons
            Expanded(
              child: Column(
                children: [
                  // Centered intro skill
                  Center(
                    child: _buildSkill('Intro', Icons.edit_outlined, true),
                  ),

                  SizedBox(height: 24),

                  // Row of unlocked skills
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildSkill('Phrases', Icons.menu_book, true),
                      _buildSkill('Travel', Icons.directions_bike, true),
                    ],
                  ),

                  SizedBox(height: 24),

                  // Centered locked skill
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [_buildSkill('', Icons.lock, false)],
                  ),

                  SizedBox(height: 24),

                  // Row of locked skills
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildSkill('', Icons.lock, false),
                      _buildSkill('', Icons.lock, false),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Reusable skill icon builder
  Widget _buildSkill(String label, IconData icon, bool unlocked) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            // Outer circle with border
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Color.fromARGB(255, 194, 192, 192),
                  width: 8,
                ),
              ),
              child: Center(
                // Inner filled circle with icon
                child: Container(
                  padding: EdgeInsets.all(17),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 17, 184, 206),
                  ),
                  child: Icon(
                    icon,
                    color: unlocked ? Colors.white : Colors.grey[600],
                    size: 24,
                  ),
                ),
              ),
            ),

            // Trophy icon badge
            Positioned(
              bottom: -1,
              right: -1,
              child: Icon(Icons.emoji_events, color: Colors.amber, size: 24),
            ),

            // Optional progress number
            if (unlocked)
              Positioned(
                bottom: 7,
                right: 8,
                child: Text(
                  '1',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
          ],
        ),
        SizedBox(height: 6),
        // Skill label text (if provided)
        if (label.isNotEmpty)
          Text(label, style: TextStyle(fontWeight: FontWeight.w600)),
      ],
    );
  }
}
