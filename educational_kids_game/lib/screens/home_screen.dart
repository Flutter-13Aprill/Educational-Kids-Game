import 'package:educational_kids_game/screens/verbal_skills.dart';
import 'package:flutter/material.dart';

import 'package:educational_kids_game/screens/challenges_screen.dart';

import 'package:educational_kids_game/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Titles of learning categories
  List<String> objectsTitle = [
    'Logical reasoning',
    'Artistic thinking',
    'Verbal skills',
  ];
  // Numbers of learning categories
  List<String> objectsNum = ['18', '35', '3'];
  // Progress for each category 
  List<double> progress = [0.3, 0.9, 0.2];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with user icons
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Container(
            color: Color.fromRGBO(229, 229, 229, 0.8),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/fire.png', width: 30, height: 30),
                  Text(
                    '3',
                    style: TextStyle(
                      color: Color.fromRGBO(235, 159, 74, 1),
                      fontSize: 20,
                    ),
                  ),
                  Image.asset(
                    'assets/images/treasure.png',
                    width: 30,
                    height: 30,
                  ),
                  Text(
                    '1432 XP',
                    style: TextStyle(
                      color: Color.fromRGBO(51, 143, 155, 1),
                      fontSize: 20,
                    ),
                  ),
                  Image.asset('assets/images/hart.png', width: 30, height: 30),
                  Icon(
                    Icons.all_inclusive_outlined,
                    color: Color.fromRGBO(220, 63, 0, 1),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                Expanded(
                  //List for categories
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder:
                        (context, index) => Column(
                          spacing: 8,
                          children: [
                            SizedBox(height: 16),
                            //Learning categories titles
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  objectsTitle[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/crown.png',
                                      width: 31,
                                      height: 27,
                                    ),
                                    Text(
                                      '${objectsNum[index]} /40',
                                      style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 0.6),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                //Active unit
                                Expanded(
                                  child: SizedBox(
                                    width: MediaQuery.sizeOf(context).width / 2,
                                    height:
                                        (MediaQuery.sizeOf(context).width) / 2,
                                    child: InkWell(
                                      // Navigate to VerbalSkills
                                      onTap: () {
                                        if (index == 2) {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder:
                                                  (context) => VerbalSkills(),
                                            ),
                                          );
                                          setState(() {});
                                        }
                                      },
                                      child: Card(
                                        elevation: 0,
                                        color: Color.fromRGBO(
                                          196,
                                          196,
                                          196,
                                          0.4,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Unit 1',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                ),
                                              ),
                                              // Progress bar with crown overlay
                                              Stack(
                                                clipBehavior: Clip.none,
                                                children: [
                                                  SizedBox(
                                                    height: 16,
                                                    width: 120,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            30,
                                                          ),
                                                      child:
                                                          LinearProgressIndicator(
                                                            value:
                                                                progress[index],
                                                            minHeight: 16,
                                                            backgroundColor:
                                                                Color.fromRGBO(
                                                                  196,
                                                                  196,
                                                                  196,
                                                                  1,
                                                                ),
                                                            color:
                                                                Color.fromRGBO(
                                                                  236,
                                                                  192,
                                                                  85,
                                                                  1,
                                                                ),
                                                          ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: -13,
                                                    left: -20,
                                                    child: Container(
                                                      width: 40,
                                                      height: 30,
                                                      color: Color.fromRGBO(
                                                        231,
                                                        227,
                                                        225,
                                                        1,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/crown.png',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                //locked unit
                                Expanded(
                                  child: SizedBox(
                                    width: MediaQuery.sizeOf(context).width / 2,
                                    height:
                                        (MediaQuery.sizeOf(context).width) / 2,
                                    child: IgnorePointer(
                                      ignoring: true,
                                      child: InkWell(
                                        child: Card(
                                          elevation: 0,
                                          color: Color.fromRGBO(
                                            196,
                                            196,
                                            196,
                                            0.4,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: FittedBox(
                                              fit: BoxFit.none,
                                              child: Image.asset(
                                                'assets/images/lock.png',
                                                width: 40,
                                                height: 40,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// MainNavigation widget controls bottom navigation
class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  // Track the current selected index
  int selectedIndex = 0;
  // List of screens
  final List<Widget> screens = const [
    HomeScreen(),
    ChallengesScreen(),
    ProfileScreen(),
    ProfileScreen(),
  ];
  // Update selected index
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
            activeIcon: Icon(
              Icons.home,
              color: Color.fromRGBO(65, 172, 120, 1),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            label: '',
            activeIcon: Icon(
              Icons.track_changes,
              color: Color.fromRGBO(220, 63, 0, 1),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: '',
            activeIcon: Icon(
              Icons.people,
              color: Color.fromRGBO(171, 112, 223, 1),
            ),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
