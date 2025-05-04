import 'package:flutter/material.dart';

class VerbalSkills extends StatelessWidget {
  const VerbalSkills({super.key});

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
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 8),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Verbal Skills',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  Image.asset('assets/images/crown.png', width: 25, height: 25),
                  Text(
                    '3',
                    style: TextStyle(
                      color: Color.fromRGBO(235, 159, 74, 1),
                      fontSize: 20,
                    ),
                  ),
                  Image.asset(
                    'assets/images/diamond.png',
                    width: 25,
                    height: 25,
                  ),
                  Text(
                    '213',
                    style: TextStyle(
                      color: Color.fromRGBO(51, 143, 155, 1),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 90),
              // Stack to display Unit 1 information with an image
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width / 1.5,
                    height: (MediaQuery.sizeOf(context).width) / 3,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                      ),
                      color: Color.fromRGBO(196, 196, 196, 0.4),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Unit 1',
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                          SizedBox(height: 16),
                          //Progress bar and the progress count
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  SizedBox(
                                    height: 16,
                                    width: 100,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: LinearProgressIndicator(
                                        value: 0.2,
                                        minHeight: 16,
                                        backgroundColor: Color.fromRGBO(
                                          196,
                                          196,
                                          196,
                                          1,
                                        ),
                                        color: Color.fromRGBO(236, 192, 85, 1),
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    top: -10,
                                    left: -20,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      color: Color.fromRGBO(231, 227, 225, 1),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Image.asset(
                                          'assets/images/crown.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 8),
                              Text("3/40"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -60,
                    left: 80,
                    child: Image.asset(
                      'assets/images/horse.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Expanded(
                // list for learning journey
                child: ListView(
                  children: [
                    //Intro button
                    InkWell(
                      onTap: () {},
                      child: Column(
                        spacing: 8,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 10,
                                    color: Color.fromRGBO(196, 196, 196, 1),
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(114, 191, 199, 1),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/images/pencil.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 15,
                                right: 6,
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/crown.png',
                                      width: 30,
                                      height: 30,
                                    ),
                                    Positioned(
                                      top: 5,
                                      bottom: 0,
                                      right: 0,
                                      left: 0,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text('1'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Text('Intro', style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //Phrases button
                        InkWell(
                          onTap: () {},
                          child: Column(
                            spacing: 8,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 10,
                                        color: Color.fromRGBO(196, 196, 196, 1),
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                            114,
                                            191,
                                            199,
                                            1,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            'assets/images/book.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 15,
                                    right: 6,
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          'assets/images/crown.png',
                                          width: 30,
                                          height: 30,
                                        ),
                                        Positioned(
                                          top: 5,
                                          bottom: 0,
                                          right: 0,
                                          left: 0,
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text('1'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Text('Phrases', style: TextStyle(fontSize: 20)),
                            ],
                          ),
                        ),
                        //Travel button
                        InkWell(
                          onTap: () {},
                          child: Column(
                            spacing: 8,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 10,
                                        color: Color.fromRGBO(196, 196, 196, 1),
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                            114,
                                            191,
                                            199,
                                            1,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            'assets/images/bicycle.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 15,
                                    right: 6,
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          'assets/images/crown.png',
                                          width: 30,
                                          height: 30,
                                        ),
                                        Positioned(
                                          top: 5,
                                          bottom: 0,
                                          right: 0,
                                          left: 0,
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text('1'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Text('Travel', style: TextStyle(fontSize: 20)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    //locked buttins
                    IgnorePointer(
                      ignoring: true,
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          spacing: 8,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: 120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 10,
                                      color: Color.fromRGBO(196, 196, 196, 1),
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(114, 191, 199, 1),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(30.0),
                                        child: Image.asset(
                                          'assets/images/lock.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 15,
                                  right: 6,
                                  child: Image.asset(
                                    'assets/images/crown.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IgnorePointer(
                          ignoring: true,
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              spacing: 8,
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      width: 120,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          width: 10,
                                          color: Color.fromRGBO(
                                            196,
                                            196,
                                            196,
                                            1,
                                          ),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                              114,
                                              191,
                                              199,
                                              1,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(30.0),
                                            child: Image.asset(
                                              'assets/images/lock.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 15,
                                      right: 6,
                                      child: Image.asset(
                                        'assets/images/crown.png',
                                        width: 30,
                                        height: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        IgnorePointer(
                          ignoring: true,
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              spacing: 8,
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      width: 120,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          width: 10,
                                          color: Color.fromRGBO(
                                            196,
                                            196,
                                            196,
                                            1,
                                          ),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                              114,
                                              191,
                                              199,
                                              1,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(30.0),
                                            child: Image.asset(
                                              'assets/images/lock.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 15,
                                      right: 6,
                                      child: Image.asset(
                                        'assets/images/crown.png',
                                        width: 30,
                                        height: 30,
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
                    SizedBox(height: 100),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
