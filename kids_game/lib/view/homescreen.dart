import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// Main Home Screen Widget
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        backgroundColor: Color.fromARGB(211, 229, 229, 229),
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Star icon and level number
            SvgPicture.asset('assets/icon/Vector4.svg', height: 25, width: 25),
            SizedBox(width: 8),
            Text(
              '3',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Color(0xffEB9F4A),
              ),
            ),
            SizedBox(width: 16),
            // XP icon and value
            SvgPicture.asset('assets/icon/Vector.svg', height: 20, width: 20),
            SizedBox(width: 8),
            Text(
              '1432 XP',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Color(0xff338F9B),
              ),
            ),
            SizedBox(width: 16),
            // Notification icons
            SvgPicture.asset(
              'assets/icon/Vector (2).svg',
              height: 20,
              width: 20,
            ),
            SvgPicture.asset(
              'assets/icon/Vector (3).svg',
              height: 20,
              width: 20,
            ),
          ],
        ),
      ),

      backgroundColor: Color(0xffFBF5F2),

      // Body content
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  // Section: Logical reasoning
                  Padding(
                    padding: EdgeInsets.only(left: 16, top: 16),
                    child: Row(
                      children: [
                        Text(
                          'Logical reasoning',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 16),
                        SvgPicture.asset(
                          'assets/icon/Vector (1).svg',
                          height: 20,
                          width: 20,
                        ),
                        Text(
                          '18/40',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Cards for Logical reasoning
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Left card with title and progress icon
                        Container(
                          padding: EdgeInsets.all(16),
                          width: 170,
                          height: 227,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(211, 229, 229, 229),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Transform.translate(
                                offset: Offset(0, -10),
                                child: Text(
                                  'Unit 1',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: SvgPicture.asset(
                                  'assets/icon/Completion1.svg',
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Right card with plus icon
                        Container(
                          width: 170,
                          height: 227,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(211, 229, 229, 229),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/icon/Vector5.svg',
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Section: Artistic thinking
                  Padding(
                    padding: EdgeInsets.only(left: 16, top: 16),
                    child: Row(
                      children: [
                        Text(
                          'Artistic thinking',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 16),
                        SvgPicture.asset(
                          'assets/icon/Vector (1).svg',
                          height: 20,
                          width: 20,
                        ),
                        Text(
                          '35/40',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Cards for Artistic thinking
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          width: 170,
                          height: 227,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(211, 229, 229, 229),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Transform.translate(
                                offset: Offset(0, -10),
                                child: Text(
                                  'Unit 1',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: SvgPicture.asset(
                                  'assets/icon/Completion3.svg',
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 170,
                          height: 227,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(211, 229, 229, 229),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/icon/Vector5.svg',
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Section: Verbal skills
                  Padding(
                    padding: EdgeInsets.only(left: 16, top: 16),
                    child: Row(
                      children: [
                        Text(
                          'Verbal skills',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 30),
                        SvgPicture.asset(
                          'assets/icon/Vector (1).svg',
                          height: 20,
                          width: 20,
                        ),
                        Text(
                          '3/40',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Cards for Verbal skills
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          width: 170,
                          height: 227,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(211, 229, 229, 229),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Transform.translate(
                                offset: Offset(0, -10),
                                child: Text(
                                  'Unit 1',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: SvgPicture.asset(
                                  'assets/icon/5.svg',
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 170,
                          height: 227,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(211, 229, 229, 229),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/icon/Vector5.svg',
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (index) {},
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icon/home.svg',
              height: 24,
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icon/target.svg',
              height: 24,
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icon/profile.svg',
              height: 24,
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icon/setting.svg',
              height: 24,
              width: 24,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
