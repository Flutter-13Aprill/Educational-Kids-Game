import 'package:flutter/material.dart';
import 'verbal_skills_screen.dart';
import 'profile_screen.dart';
import 'challenges_screen.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({super.key});

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeContent(),
    const ChallengesScreen(),
    const ProfileScreen(),
    Placeholder(), // Settings placeholder
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bolt), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3ECE5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 🔝 XP Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.local_fire_department, color: Colors.orange),
                  Text('3'),
                  Icon(Icons.card_giftcard, color: Colors.teal),
                  Text('1432 XP'),
                  Icon(Icons.favorite, color: Colors.red),
                  Text('∞'),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // 📚 Sections
            _buildSection(context, "Logical reasoning", 18, 40, Colors.orange),
            const SizedBox(height: 16),
            _buildSection(context, "Artistic thinking", 35, 40, Colors.amber),
            const SizedBox(height: 16),
            _buildSection(
              context,
              "Verbal skills",
              3,
              40,
              Colors.grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VerbalSkillsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 Section builder
  Widget _buildSection(
    BuildContext context,
    String title,
    int current,
    int total,
    Color barColor, {
    void Function()? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title + icon
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.emoji_events, color: Colors.amber, size: 20),
              Text(' $current/$total'),
            ],
          ),
          const SizedBox(height: 8),

          // Cards
          Row(
            children: [
              // Active card
              Expanded(
                child: GestureDetector(
                  onTap: onTap,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Unit 1'),
                          const SizedBox(height: 8),
                          LinearProgressIndicator(
                            value: current / total,
                            backgroundColor: Colors.grey[300],
                            color: barColor,
                            minHeight: 8,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),

              // Locked card
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const SizedBox(
                    height: 60,
                    child: Center(
                      child: Icon(Icons.lock, size: 30, color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
