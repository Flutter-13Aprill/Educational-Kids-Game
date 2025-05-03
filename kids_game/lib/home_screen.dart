import 'package:flutter/material.dart';
import 'package:kids_game/Verbalـskills_screen.dart';
import 'package:kids_game/pofile_screen.dart';
import 'package:kids_game/target_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeContent(),
    const TargetScreen(),
    const ProfileScreen(),
    const Placeholder(), // Settings placeholder
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Color _getSelectedColor(int index) {
    switch (index) {
      case 1:
        return Colors.red;
      case 2:
        return Colors.purple;
      case 0:
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: _screens[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: const Color.fromRGBO(229, 229, 229, 0.8),
        selectedItemColor: _getSelectedColor(_selectedIndex),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.track_changes), label: "Target"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: const Color.fromRGBO(229, 229, 229, 0.8),
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: const [
                  Icon(Icons.local_fire_department,
                      color: Color.fromRGBO(235, 159, 74, 1), size: 24),
                  SizedBox(width: 4),
                  Text("3",
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.work, color: Color.fromRGBO(51, 143, 155, 1)),
                  SizedBox(width: 4),
                  Text("1432 XP",
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.favorite, color: Colors.red),
                  SizedBox(width: 4),
                  Icon(Icons.all_inclusive, color: Colors.red),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  buildSkillRow(
                    context,
                    title: "Logical reasoning",
                    current: 18,
                    total: 40,
                    progress: 0.4,
                    onTapUnit: null,
                  ),
                  const SizedBox(height: 16),
                  buildSkillRow(
                    context,
                    title: "Artistic thinking",
                    current: 35,
                    total: 40,
                    progress: 0.8,
                    onTapUnit: null,
                  ),
                  const SizedBox(height: 16),
                  buildSkillRow(
                    context,
                    title: "Verbal skills",
                    current: 3,
                    total: 40,
                    progress: 0.1,
                    onTapUnit: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VerbalSkillsScreen(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSkillRow(BuildContext context,
      {required String title,
      required int current,
      required int total,
      required double progress,
      VoidCallback? onTapUnit}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Row(
              children: [
                Image.asset('assets/icons/Vector-2.png', width: 20, height: 20),
                const SizedBox(width: 4),
                Text("$current/$total",
                    style: const TextStyle(fontWeight: FontWeight.w500)),
              ],
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            GestureDetector(
              onTap: onTapUnit,
              child: Container(
                width: 200,
                height: 227,
                margin: const EdgeInsets.only(right: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2)),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Unit 1",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const Spacer(),
                    Row(
                      children: [
                        Image.asset('assets/icons/Vector-2.png',
                            width: 20, height: 20),
                        const SizedBox(width: 6),
                        Expanded(
                          child: LinearProgressIndicator(
                            value: progress,
                            color: Colors.amber,
                            backgroundColor: Colors.grey[300],
                            minHeight: 6,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 179,
              height: 227,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(196, 196, 196, 0.4),
                borderRadius: BorderRadius.circular(17),
              ),
              child: const Center(
                child: Icon(Icons.lock, size: 32, color: Colors.grey),
              ),
            ),
          ],
        )
      ],
    );
  }
}
