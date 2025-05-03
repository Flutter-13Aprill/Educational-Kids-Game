import 'package:flutter/material.dart';

//here is the page where the user can see the course detailes
//they can see their progress number of achivments and the lessons

class CourseLessonsScreen extends StatelessWidget {
  const CourseLessonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar fo the course name and the completion and the diamonds
      appBar: AppBar(
        automaticallyImplyLeading: false,

        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 30),
          child: Container(
            height: 50,
            color: const Color.fromARGB(255, 229, 229, 229),
            child: Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: [
                  SizedBox(
                    width: 125,
                    height: 30,
                    child: Text(
                      'Verbal skills',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: Row(
                      spacing: 16,
                      children: [
                        Image.asset('assets/project_icons/crownIcon.png'),
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
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: Row(
                      spacing: 8,
                      children: [
                        Image.asset('assets/project_icons/diamondIcon.png'),
                        Text(
                          '213',
                          style: TextStyle(
                            color: Color.fromARGB(255, 2, 161, 251),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            // here where the unit number is displayed and also the progress in the unit
            SizedBox(height: 40),
            UnconstrainedBox(
              child: Container(
                width: 175,
                height: 120,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 233, 232, 232),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black12, width: 3),
                ),
                child: Stack(
                  //so the horse head can go out of the box
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: -32,
                      child: SizedBox(
                        width: 125,
                        height: 80,
                        child: Image.asset(
                          'assets/project_images/horseImage.png',
                        ),
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 35),
                          width: 125,
                          height: 45,
                          alignment: Alignment.center,

                          child: Text('Unit 1'),
                        ),
                        Container(
                          width: 125,
                          height: 25,
                          alignment: Alignment.bottomCenter,

                          child: Row(
                            children: [
                              Image.asset('assets/project_icons/crownIcon.png'),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                height: 10,
                                width: 50,
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
                                  value: 0.1,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              SizedBox(width: 15),

                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  '3/40',
                                  style: TextStyle(fontSize: 10),
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
            ),


            SizedBox(height: 50),
            //here where the first item is shown which is intro 

            Column(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                UnconstrainedBox(
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      UnconstrainedBox(
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black12, width: 5),
                          ),
                          child: Center(
                            child: FractionallySizedBox(
                              heightFactor: 0.9,
                              widthFactor: 0.9,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 1, 191, 199),
                                  shape: BoxShape.circle,
                                ),
                                child: UnconstrainedBox(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Image.asset(
                                      'assets/project_images/pencilImage.png',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 70,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset('assets/project_icons/crownIcon.png'),
                            Text('1', textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text('Intro'),

                //here is the second row where Phrases and Travel are shown
                UnconstrainedBox(
                  child: SizedBox(
                    width: 300,
                    height: 150,
                    child: Row(
                      spacing: 16,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UnconstrainedBox(
                          child: Column(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.center,
                                children: [
                                  UnconstrainedBox(
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.black12,
                                          width: 5,
                                        ),
                                      ),
                                      child: Center(
                                        child: FractionallySizedBox(
                                          heightFactor: 0.9,
                                          widthFactor: 0.9,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                255,
                                                1,
                                                191,
                                                199,
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                            child: UnconstrainedBox(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: Image.asset(
                                                  'assets/project_images/bookImage.png',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 15,
                                    left: 70,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/project_icons/crownIcon.png',
                                        ),
                                        Text('1', textAlign: TextAlign.center),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Text('Phrases'),
                            ],
                          ),
                        ),
                        UnconstrainedBox(
                          child: Column(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.center,
                                children: [
                                  UnconstrainedBox(
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.black12,
                                          width: 5,
                                        ),
                                      ),
                                      child: Center(
                                        child: FractionallySizedBox(
                                          heightFactor: 0.9,
                                          widthFactor: 0.9,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                255,
                                                1,
                                                191,
                                                199,
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                            child: UnconstrainedBox(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: Image.asset(
                                                  'assets/project_images/bikeImage.png',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 15,
                                    left: 70,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/project_icons/crownIcon.png',
                                        ),
                                        Text('1', textAlign: TextAlign.center),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Text('Travel'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //here is the rest of locked courses
                UnconstrainedBox(
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      UnconstrainedBox(
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black12, width: 5),
                          ),
                          child: Center(
                            child: FractionallySizedBox(
                              heightFactor: 0.9,
                              widthFactor: 0.9,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 1, 191, 199),
                                  shape: BoxShape.circle,
                                ),
                                child: UnconstrainedBox(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Icon(
                                      Icons.lock,
                                      color: const Color.fromARGB(136, 0, 0, 0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 70,
                        child: Image.asset(
                          'assets/project_icons/crownIcon.png',
                        ),
                      ),
                    ],
                  ),
                ),
                UnconstrainedBox(
                  child: SizedBox(
                    width: 300,
                    height: 150,
                    child: Row(
                      spacing: 16,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UnconstrainedBox(
                          child: Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.center,
                            children: [
                              UnconstrainedBox(
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.black12,
                                      width: 5,
                                    ),
                                  ),
                                  child: Center(
                                    child: FractionallySizedBox(
                                      heightFactor: 0.9,
                                      widthFactor: 0.9,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                            255,
                                            1,
                                            191,
                                            199,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: UnconstrainedBox(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: Icon(
                                              Icons.lock,
                                              color: const Color.fromARGB(
                                                136,
                                                0,
                                                0,
                                                0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 15,
                                left: 70,
                                child: Image.asset(
                                  'assets/project_icons/crownIcon.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                        UnconstrainedBox(
                          child: Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.center,
                            children: [
                              UnconstrainedBox(
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.black12,
                                      width: 5,
                                    ),
                                  ),
                                  child: Center(
                                    child: FractionallySizedBox(
                                      heightFactor: 0.9,
                                      widthFactor: 0.9,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                            255,
                                            1,
                                            191,
                                            199,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: UnconstrainedBox(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: Icon(
                                              Icons.lock,
                                              color: const Color.fromARGB(
                                                136,
                                                0,
                                                0,
                                                0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 15,
                                left: 70,
                                child: Image.asset(
                                  'assets/project_icons/crownIcon.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
