import 'package:flutter/material.dart';
import 'package:project3/screens/course_lessons_screen.dart';

// here is the home courses screen where all the courses are displayed

class HomeCoursesScreen extends StatefulWidget {
  const HomeCoursesScreen({super.key});

  @override
  State<HomeCoursesScreen> createState() => _HomeCoursesScreenState();
}

class _HomeCoursesScreenState extends State<HomeCoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //here is the appbar with 3 images of an icons it's showing the user thier stats
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 30),
          child: Center(
            child: Container(
              height: 50,
              color: const Color.fromARGB(255, 229, 229, 229),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 8,
                  //stereak status
                  children: [
                    SizedBox(
                      width: 75,
                      height: 40,
                      child: Row(
                        spacing: 8,
                        children: [
                          Image.asset('assets/project_icons/fireIcon.png'),
                          Text(
                            '3',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 235, 159, 74),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //XP status
                    SizedBox(
                      width: 130,
                      height: 30,
                      child: Row(
                        spacing: 8,
                        children: [
                          Image.asset('assets/project_icons/xpIcon.png'),
                          Text(
                            '1432 XP',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 51, 143, 155),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // here where the user shows his attempts
                    SizedBox(
                      width: 80,
                      height: 30,
                      child: Row(
                        spacing: 8,
                        children: [
                          Image.asset('assets/project_icons/heartIcon.png'),
                          Image.asset('assets/project_icons/infinityIcon.png'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      //the start of the body where the user can see the courses and their progress in each course and wether it's locked or not
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        //ListView so to make it scrollable
        child: ListView(
          children: [
            Container(height: 40),
            SizedBox(
              height: 45,
              //logical reasoning course InkWell are used in each unlocked container so the user can go to course lessons
              child: Row(
                spacing: 8,
                children: [
                  SizedBox(
                    width: 300,
                    child: Text(
                      'Logical reasoning',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    child: Row(
                      children: [
                        Image.asset('assets/project_icons/crownIcon.png'),
                        Text('18/40', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CourseLessonsScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 380,
                  height: 300,
                  child: Center(
                    child: Row(
                      spacing: 16,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 275,
                          width: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(140, 196, 196, 196),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Unit 1', style: TextStyle(fontSize: 30)),

                              Padding(
                                padding: const EdgeInsets.only(bottom: 16.0),
                                child: Container(
                                  height: 30,
                                  width: 170,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/project_icons/crownIcon.png',
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        height: 15,
                                        width: 120,
                                        child: LinearProgressIndicator(
                                          backgroundColor: const Color.fromARGB(
                                            255,
                                            211,
                                            207,
                                            207,
                                          ),
                                          valueColor: AlwaysStoppedAnimation(
                                            Color.fromARGB(255, 236, 192, 85),
                                          ),
                                          value: 0.4,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.elliptical(20, 20),
                                            bottomLeft: Radius.zero,
                                            topRight: Radius.circular(25),
                                            bottomRight: Radius.circular(25),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 275,
                          width: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(140, 196, 196, 196),
                          ),
                          child: Icon(Icons.lock, size: 75),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //Artistic thinking course
            SizedBox(
              width: 380,
              height: 45,
              child: Row(
                spacing: 8,
                children: [
                  SizedBox(
                    width: 300,
                    child: Text(
                      'Artistic thinking',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    child: Row(
                      children: [
                        Image.asset('assets/project_icons/crownIcon.png'),
                        Text('35/40', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CourseLessonsScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 380,
                  height: 300,
                  child: Center(
                    child: Row(
                      spacing: 16,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 275,
                          width: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(140, 196, 196, 196),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Unit 1', style: TextStyle(fontSize: 30)),

                              Padding(
                                padding: const EdgeInsets.only(bottom: 16.0),
                                child: Container(
                                  height: 30,
                                  width: 170,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/project_icons/crownIcon.png',
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        height: 15,
                                        width: 120,
                                        child: LinearProgressIndicator(
                                          backgroundColor: const Color.fromARGB(
                                            255,
                                            211,
                                            207,
                                            207,
                                          ),
                                          valueColor: AlwaysStoppedAnimation(
                                            Color.fromARGB(255, 236, 192, 85),
                                          ),
                                          value: 0.8,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.elliptical(20, 20),
                                            bottomLeft: Radius.zero,
                                            topRight: Radius.circular(25),
                                            bottomRight: Radius.circular(25),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 275,
                          width: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(140, 196, 196, 196),
                          ),
                          child: Icon(Icons.lock, size: 75),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Verbal skills course
            SizedBox(
              width: 380,
              height: 45,
              child: Row(
                spacing: 8,
                children: [
                  SizedBox(
                    width: 300,
                    child: Text(
                      'Verbal skills',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    child: Row(
                      children: [
                        Image.asset('assets/project_icons/crownIcon.png'),
                        Text('3/40', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CourseLessonsScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 380,
                  height: 300,
                  child: Center(
                    child: Row(
                      spacing: 16,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 275,
                          width: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(140, 196, 196, 196),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Unit 1', style: TextStyle(fontSize: 30)),

                              Padding(
                                padding: const EdgeInsets.only(bottom: 16.0),
                                child: Container(
                                  height: 30,
                                  width: 170,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/project_icons/crownIcon.png',
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        height: 15,
                                        width: 120,
                                        child: LinearProgressIndicator(
                                          backgroundColor: const Color.fromARGB(
                                            255,
                                            211,
                                            207,
                                            207,
                                          ),
                                          valueColor: AlwaysStoppedAnimation(
                                            Color.fromARGB(255, 236, 192, 85),
                                          ),
                                          value: 0.2,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.elliptical(20, 20),
                                            bottomLeft: Radius.zero,
                                            topRight: Radius.circular(25),
                                            bottomRight: Radius.circular(25),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 275,
                          width: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(140, 196, 196, 196),
                          ),
                          child: Icon(Icons.lock, size: 75),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
