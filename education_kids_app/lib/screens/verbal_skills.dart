import 'package:flutter/material.dart';

class VerbalSkills extends StatelessWidget {
  const VerbalSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 245, 242),
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: const Color.fromARGB(255, 250, 245, 242),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50), // height of the bottom widget
          child: Container(
            color: const Color.fromARGB(255, 229, 229, 229),
            height: 50,

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Verbal skills',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(width: 16),

                  Image.asset('assets/crown.png', width: 30),
                  Text(
                    '3',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 236, 192, 85),
                      fontSize: 20,
                    ),
                  ),

                  // SizedBox(width: 24),
                  Image.asset('assets/cristal.png', width: 30),
                  Text(
                    '213',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 2, 161, 251),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),

            child: Column(
              spacing: 24,
              children: [
                Container(
                  width: 180,
                  height: 120,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(29, 0, 0, 0),
                    border:Border.all(color: const Color.fromARGB(50, 0, 0, 0), width: 2),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Column
                  (
                    
                    children: [
                      Image.asset('assets/hourse.png', width: 75,),
                      Text('Unit 1', style: TextStyle(fontSize: 16),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(children: [
                          Image.asset('assets/crown.png',width: 30,),
                          Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: LinearProgressIndicator(
                                      value:0.07, // your progress from 0.0 to 1.0
                                      minHeight: 12,
                                      backgroundColor: const Color.fromARGB(255,196,196,196,),
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        const Color.fromARGB(255, 236, 192, 85),
                                      ),
                                    ),
                                  ),
                                ),
                          Text('3/40')
                        ],),
                      )
                    ],
                  ),)
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Stack(
                        clipBehavior: Clip.none,

                        children: [
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => SettingScreen()),
                              // );
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 114, 191, 199),
                                boxShadow: kElevationToShadow[11],
                                border: Border.all(
                                  color: const Color.fromARGB(
                                    255,
                                    196,
                                    196,
                                    196,
                                  ),
                                  width: 7,
                                ),
                              ),
                              child: Image.asset('assets/pencil.png'),
                            ),
                          ),

                          Positioned(
                            right: -10,
                            top: 60,
                            child: Image.asset('assets/crown.png'),
                          ),
                          Positioned(
                            right: 30,
                            bottom: -30,
                            child: Text(
                              'Intro',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Stack(
                        clipBehavior: Clip.none,

                        children: [
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => SettingScreen()),
                              // );
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 114, 191, 199),
                                boxShadow: kElevationToShadow[11],
                                border: Border.all(
                                  color: const Color.fromARGB(
                                    255,
                                    196,
                                    196,
                                    196,
                                  ),
                                  width: 7,
                                ),
                              ),
                              child: Image.asset('assets/book.png'),
                            ),
                          ),
                          Positioned(
                            right: -10,
                            top: 60,
                            child: Image.asset('assets/crown.png'),
                          ),
                          Positioned(
                            right: 30,
                            bottom: -30,
                            child: Text(
                              'Phrases',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 24),

                    Center(
                      child: Stack(
                        clipBehavior: Clip.none,

                        children: [
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => SettingScreen()),
                              // );
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 114, 191, 199),
                                boxShadow: kElevationToShadow[11],
                                border: Border.all(
                                  color: const Color.fromARGB(
                                    255,
                                    196,
                                    196,
                                    196,
                                  ),
                                  width: 7,
                                ),
                              ),
                              child: Image.asset('assets/bike.png'),
                            ),
                          ),
                          Positioned(
                            right: -10,
                            top: 60,
                            child: Image.asset('assets/crown.png'),
                          ),

                          Positioned(
                            right: 30,
                            bottom: -30,
                            child: Text(
                              'Travel',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),






                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Stack(
                        clipBehavior: Clip.none,

                        children: [
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => SettingScreen()),
                              // );
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 114, 191, 199),
                                boxShadow: kElevationToShadow[11],
                                border: Border.all(
                                  color: const Color.fromARGB(
                                    255,
                                    196,
                                    196,
                                    196,
                                  ),
                                  width: 7,
                                ),
                              ),
                              child: Image.asset('assets/lock.png'),
                            ),
                          ),

                          Positioned(
                            right: -10,
                            top: 60,
                            child: Image.asset('assets/crown.png'),
                          ),
                         
                        ],
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Stack(
                        clipBehavior: Clip.none,

                        children: [
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => SettingScreen()),
                              // );
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 114, 191, 199),
                                boxShadow: kElevationToShadow[11],
                                border: Border.all(
                                  color: const Color.fromARGB(
                                    255,
                                    196,
                                    196,
                                    196,
                                  ),
                                  width: 7,
                                ),
                              ),
                              child: Image.asset('assets/lock.png'),
                            ),
                          ),
                          Positioned(
                            right: -10,
                            top: 60,
                            child: Image.asset('assets/crown.png'),
                          ),
                          
                        ],
                      ),
                    ),
                    SizedBox(width: 24),

                    Center(
                      child: Stack(
                        clipBehavior: Clip.none,

                        children: [
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => SettingScreen()),
                              // );
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 114, 191, 199),
                                boxShadow: kElevationToShadow[11],
                                border: Border.all(
                                  color: const Color.fromARGB(
                                    255,
                                    196,
                                    196,
                                    196,
                                  ),
                                  width: 7,
                                ),
                              ),
                              child: Image.asset('assets/lock.png'),
                            ),
                          ),
                          Positioned(
                            right: -10,
                            top: 60,
                            child: Image.asset('assets/crown.png'),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
