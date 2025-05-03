import 'package:educational_kids_game/Challange_Screen.dart';
import 'package:educational_kids_game/Skill_Screen.dart';
import 'package:flutter/material.dart';
// Profile Screen StatefulWidget
class Profile_Screen extends StatefulWidget {
  @override
  State<Profile_Screen> createState() => _ProfileScreenState();
}
class _ProfileScreenState extends State<Profile_Screen> {
  int selectedIndex = 2; // Index for current BottomNavigationBar item
  // Handles tap on bottom nav bar items
  void _onItemTapped(int index) {
    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Skill_Screen()),
      );
    } else if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Challange_Screen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF6F2),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),

            // Header section with title
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              height: 50,
              child: Center(
                child: Text('Profile', style: TextStyle(fontSize: 28)),
              ),
            ),

            // Scrollable content area
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),

                    // Profile details (name, username, joined date, profile image)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nidhi Pandya',
                                style: TextStyle(fontSize: 24),
                              ),
                              SizedBox(height: 1),
                              Text(
                                'Nidhi12',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time_filled_rounded,
                                    size: 14,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    'Joined March 2022',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              'assets/Profile-Image.png',
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 12),
                    Divider(color: Colors.grey[300], thickness: 3),
                    SizedBox(height: 8),

                    // Friends update tile
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFFFAF6F2),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.grey[300]!,
                            width: 3.0,
                          ),
                        ),
                        child: ListTile(
                          leading: Icon(
                            Icons.emoji_people_sharp,
                            color: Colors.amber,
                          ),
                          title: Text('Friends updates'),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    // Statistics section
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Statistics', style: TextStyle(fontSize: 24)),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              statBox(
                                '3',
                                'Day Streak',
                                Text('🔥', style: TextStyle(fontSize: 24)),
                              ),
                              SizedBox(width: 12),
                              statBox(
                                '1432',
                                'Total XP',
                                Text('⚡', style: TextStyle(fontSize: 24)),
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              statBox(
                                'Bronze',
                                'Current League',
                                Text('🥉', style: TextStyle(fontSize: 24)),
                              ),
                              SizedBox(width: 12),
                              statBox(
                                '0',
                                'Top 3 Finishes',
                                Text('🏅', style: TextStyle(fontSize: 24)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Friends list section
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Friends', style: TextStyle(fontSize: 24)),
                              Text(
                                'ADD FRIENDS',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFAF6F2),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Colors.grey[300]!,
                                width: 3.0,
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 32,
                                    vertical: 4,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'FOLLOWING',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue,
                                              fontSize: 13,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'FOLLOWERS',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 6),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 2,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 2,
                                        color: Colors.grey[400],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 1,
                                      ),
                                      child: _friendTile(
                                        'Hardi',
                                        '4367 XP',
                                        Colors.purple,
                                      ),
                                    ),
                                    Divider(
                                      height: 16,
                                      color: Colors.grey[400],
                                      thickness: 3,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 1,
                                      ),
                                      child: _friendTile(
                                        'Krishna',
                                        '2334 XP',
                                        Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 8),

                    // Invite friends card
                    Container(
                      padding: EdgeInsets.all(24),
                      child: Container(
                        padding: EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: Color(0xFFFAF6F2),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.grey[300]!,
                            width: 3.0,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 6,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/Cat.png',
                                  height: 60,
                                  width: 60,
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Invite your friends",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Tell your friends it’s free and fun to learn on Mental up!",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),

                            // Invite button
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.group_add,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  'INVITE FRIENDS',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  padding: EdgeInsets.symmetric(vertical: 14),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom navigation bar
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
            activeIcon: Icon(Icons.track_changes, color: Colors.red, size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline, size: 30),
            activeIcon: Icon(Icons.people, color: Colors.purple, size: 30),
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

  // Widget to build each statistics box
  Widget statBox(String value, String label, Widget icon) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: Color(0xFFFAF6F2),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey[300]!, width: 3.0),
        ),
        child: Row(
          children: [
            SizedBox(width: 10),
            icon,
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(value, style: TextStyle(fontSize: 16)),
                SizedBox(height: 2),
                Text(
                  label,
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget to build each friend tile
  Widget _friendTile(String name, String account, Color color) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 16,
          child: Text(name[0], style: TextStyle(color: Colors.white)),
        ),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              account,
              style: TextStyle(color: Colors.grey[600], fontSize: 12),
            ),
          ],
        ),
        Spacer(),
        Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      ],
    );
  }
}
