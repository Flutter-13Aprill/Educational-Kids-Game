import 'package:educational_kids_game/screens/unit_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  // The Home screen is structured using Flutter's layout widgets like Column, Row, and Stack to organize content. It features interactive elements like InkWell for navigation to the UnitScreen and Stack for layered UI elements like progress indicators, along with visual components such as images and text to show categories and progress in different subjects.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: AppBar(
            backgroundColor: Color(0xCCE5E5E5),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icons/fire-icon.png"),
                SizedBox(width: 8),
                Text(
                  "3",
                  style: TextStyle(fontSize: 20, color: Color(0xFFEB9F4A)),
                ),
                SizedBox(width: 24),
                Image.asset("assets/icons/briefcase-icon.png"),
                SizedBox(width: 8),
                Text(
                  "1432 XP",
                  style: TextStyle(fontSize: 20, color: Color(0xFF338F9B)),
                ),
                SizedBox(width: 24),
                Image.asset("assets/icons/heart-icon.png"),
                SizedBox(width: 5),
                Image.asset("assets/icons/infinity-icon.png"),
              ],
            ),
            centerTitle: true,
            automaticallyImplyLeading: false,
          ),
        ),
      ),

      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(children: [
                    
                    ],
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Logical reasoning",
                          style: TextStyle(fontSize: 30),
                        ),

                        Row(
                          children: [
                            Image.asset("assets/icons/crown-icon.png"),
                            Text(
                              "18/40",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap:
                            () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UnitScreen(),
                              ),
                            ),
                        child: Stack(
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              height: 200,
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0x66C4C4C4),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Text(
                                  "Unit 1",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                            ),

                            Positioned(
                              bottom: 10,
                              left: 10,
                              right: 10,

                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: LinearProgressIndicator(
                                      value: 0.6,
                                      minHeight: 12,
                                      color: Color(0xffECC055),
                                      backgroundColor: Color(0xffC4C4C4),
                                    ),
                                  ),

                                  Positioned(
                                    left: 0,
                                    top: -18,
                                    child: Image.asset(
                                      "assets/icons/crown-icon.png",
                                      width: 35,
                                      height: 35,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 20),
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 200,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0x66C4C4C4),
                            ),
                            child: Image.asset("assets/icons/lock-icon.png"),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Artistic thinking",
                          style: TextStyle(fontSize: 30),
                        ),
                        Row(
                          children: [
                            Image.asset("assets/icons/crown-icon.png"),
                            Text(
                              "35/40",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            height: 200,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0x66C4C4C4),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text(
                                "Unit 1",
                                style: TextStyle(fontSize: 25),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            right: 10,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: LinearProgressIndicator(
                                    value: 0.9,
                                    minHeight: 12,
                                    color: Color(0xffECC055),
                                    backgroundColor: Color(0xffC4C4C4),
                                  ),
                                ),

                                Positioned(
                                  left: 0,
                                  top: -18,
                                  child: Image.asset(
                                    "assets/icons/crown-icon.png",
                                    width: 35,
                                    height: 35,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(width: 20),
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 200,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0x66C4C4C4),
                            ),
                            child: Image.asset("assets/icons/lock-icon.png"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Verbal skills", style: TextStyle(fontSize: 30)),

                        Row(
                          children: [
                            Image.asset("assets/icons/crown-icon.png"),
                            Text(
                              "3/40",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            height: 200,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0x66C4C4C4),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text(
                                "Unit 1",
                                style: TextStyle(fontSize: 25),
                              ),
                            ),
                          ),

                          Positioned(
                            bottom: 10,
                            left: 10,
                            right: 10,

                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: LinearProgressIndicator(
                                    value: 0.4,
                                    minHeight: 12,
                                    color: Color(0xffECC055),
                                    backgroundColor: Color(0xffC4C4C4),
                                  ),
                                ),

                                Positioned(
                                  left: 0,
                                  top: -18,
                                  child: Image.asset(
                                    "assets/icons/crown-icon.png",
                                    width: 35,
                                    height: 35,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 200,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0x66C4C4C4),
                            ),
                            child: Image.asset("assets/icons/lock-icon.png"),
                          ),
                        ],
                      ),
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
}
