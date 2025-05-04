import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerbalSkills extends StatefulWidget {
  const VerbalSkills({super.key});

  @override
  State<VerbalSkills> createState() => _VerbalSkillsState();
}

class _VerbalSkillsState extends State<VerbalSkills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(211, 229, 229, 229),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Verbal skills',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 12),
            SvgPicture.asset(
              'assets/icon/Vector (1).svg',
              height: 20,
              width: 20,
            ),
            SizedBox(width: 4),
            Text('3', style: TextStyle(fontSize: 16, color: Color(0xffEB9F4A))),
            SizedBox(width: 12),
            SvgPicture.asset('assets/icon/daimond.svg', height: 20, width: 20),
            SizedBox(width: 4),
            Text(
              '213',
              style: TextStyle(fontSize: 16, color: Color(0xff338F9B)),
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 60),

            // Unit card with image and title
            Center(
              child: Container(
                width: 200,
                height: 130,
                decoration: BoxDecoration(
                  color: Color.fromARGB(211, 229, 229, 229),
                  borderRadius: BorderRadius.circular(16),
                  shape: BoxShape.rectangle,
                  border: Border.all(color: Colors.grey, width: 2),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -50,
                      left: (200 - 124) / 2,
                      child: Image.asset(
                        'assets/images/horse.png',
                        width: 124,
                        height: 98,
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 0,
                      right: 0,
                      child: Text(
                        'Unit 1',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Positioned(
                      top: 90,
                      left: 0,
                      right: 0,
                      child: SvgPicture.asset(
                        'assets/icon/5.svg',
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 30),

            // First circle item
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      // Outer white circle
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey, width: 6),
                        ),
                      ),
                      // Inner blue circle with image
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xff72BFC7),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/pen.png',
                            height: 42,
                            width: 77,
                          ),
                        ),
                      ),
                      // Badge icon with number
                      Positioned(
                        right: 0,
                        top: 80,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icon/Vector (1).svg',
                              height: 31,
                              width: 36,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Intro',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            // Row with two circle items
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // First circle item (Phrases)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey, width: 6),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xff72BFC7),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/book.png',
                              height: 42,
                              width: 77,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 80,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/icon/Vector (1).svg',
                                height: 31,
                                width: 36,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Phrases',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                SizedBox(width: 16),

                // Second circle item (Travel)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey, width: 6),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xff72BFC7),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/bick.png',
                              height: 42,
                              width: 77,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 80,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/icon/Vector (1).svg',
                                height: 31,
                                width: 36,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Travel',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 30),

            // Centered single circle item
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 6),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xff72BFC7),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icon/Vector5.svg',
                        height: 31,
                        width: 36,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 80,
                    child: SvgPicture.asset(
                      'assets/icon/Vector (1).svg',
                      height: 31,
                      width: 36,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            // Row with two similar circle items
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey, width: 6),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xff72BFC7),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icon/Vector5.svg',
                          height: 31,
                          width: 36,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 80,
                      child: SvgPicture.asset(
                        'assets/icon/Vector (1).svg',
                        height: 31,
                        width: 36,
                      ),
                    ),
                  ],
                ),

                SizedBox(width: 16),

                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey, width: 6),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xff72BFC7),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icon/Vector5.svg',
                          height: 31,
                          width: 36,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 80,
                      child: SvgPicture.asset(
                        'assets/icon/Vector (1).svg',
                        height: 31,
                        width: 36,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
