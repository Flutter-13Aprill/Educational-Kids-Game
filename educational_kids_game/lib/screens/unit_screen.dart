import 'package:flutter/material.dart';

class UnitScreen extends StatelessWidget {
  const UnitScreen({super.key});

  // The Unit screen uses a combination of Column and Row widgets to display different units. Each unit is represented by a circular icon, and we used the Stack widget to layer the progress indicators and icons on top of each other. Some units are unlocked, while others are locked, showing a visual distinction.

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
                Text(
                  "Verbal skills",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 8),
                SizedBox(width: 24),
                Image.asset("assets/icons/crown-icon.png"),
                SizedBox(width: 8),
                Text(
                  "3",
                  style: TextStyle(fontSize: 24, color: Color(0xffECC055)),
                ),
                SizedBox(width: 24),
                Image.asset("assets/icons/diamond-icon.png"),
                SizedBox(width: 5),
                Text(
                  "213",
                  style: TextStyle(fontSize: 24, color: Color(0xFF338F9B)),
                ),
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
            SizedBox(height: 20),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Stack(
                    //   children: [
                    //     Container(
                    //       alignment: Alignment.topCenter,
                    //       height: 115,
                    //       width: 200,
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(15),
                    //         color: Color(0x66C4C4C4),
                    //         border: Border.all(color: Colors.black26, width: 2),
                    //       ),
                    //       child: Padding(
                    //         padding: const EdgeInsets.only(top: 16),
                    //         child: Text(
                    //           "Unit 1",
                    //           style: TextStyle(fontSize: 25),
                    //         ),
                    //       ),
                    //     ),

                    //     Positioned(
                    //       bottom: 10,
                    //       left: 10,
                    //       right: 10,

                    //       child: Stack(
                    //         clipBehavior: Clip.none,
                    //         children: [
                    //           ClipRRect(
                    //             borderRadius: BorderRadius.circular(15),
                    //             child: LinearProgressIndicator(
                    //               value: 0.6,
                    //               minHeight: 12,
                    //               color: Color(0xffECC055),
                    //               backgroundColor: Color(0xffC4C4C4),
                    //             ),
                    //           ),

                    //           Positioned(
                    //             left: 0,
                    //             top: -18,
                    //             child: Image.asset(
                    //               "assets/icons/crown-icon.png",
                    //               width: 35,
                    //               height: 35,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                // color: Colors.grey[400],
                                border: Border.all(
                                  color: Color(0xffC4C4C4),
                                  width: 6,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),

                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Color(0xff72BFC7),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/images/pen-image.png",
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 4,
                              right: 4,

                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    "assets/icons/crown-outline-icon.png",
                                    height: 25,
                                    width: 25,
                                  ),
                                  Text("1"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text("Intro"),
                      ],
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                // color: Colors.grey[400],
                                border: Border.all(
                                  color: Color(0xffC4C4C4),
                                  width: 6,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),

                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Color(0xff72BFC7),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/images/book-image.png",
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 4,
                              right: 4,

                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    "assets/icons/crown-outline-icon.png",
                                    height: 25,
                                    width: 25,
                                  ),
                                  Text("1"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text("Phrases"),
                      ],
                    ),
                    SizedBox(width: 12),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                // color: Colors.grey[400],
                                border: Border.all(
                                  color: Color(0xffC4C4C4),
                                  width: 6,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),

                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Color(0xff72BFC7),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/images/bike-image.png",
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 4,
                              right: 4,

                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    "assets/icons/crown-outline-icon.png",
                                    height: 25,
                                    width: 25,
                                  ),
                                  Text("1"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text("Travel"),
                      ],
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                // color: Colors.grey[400],
                                border: Border.all(
                                  color: Color(0xffC4C4C4),
                                  width: 6,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),

                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Color(0xff72BFC7),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.lock,
                                  size: 35,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 4,
                              right: 4,

                              child: Image.asset(
                                "assets/icons/crown-outline-icon.png",
                                height: 25,
                                width: 25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                // color: Colors.grey[400],
                                border: Border.all(
                                  color: Color(0xffC4C4C4),
                                  width: 6,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),

                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Color(0xff72BFC7),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.lock,
                                  size: 35,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 4,
                              right: 4,

                              child: Image.asset(
                                "assets/icons/crown-outline-icon.png",
                                height: 25,
                                width: 25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 12),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                // color: Colors.grey[400],
                                border: Border.all(
                                  color: Color(0xffC4C4C4),
                                  width: 6,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),

                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Color(0xff72BFC7),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.lock,
                                  size: 35,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 4,
                              right: 4,

                              child: Image.asset(
                                "assets/icons/crown-outline-icon.png",
                                height: 25,
                                width: 25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
