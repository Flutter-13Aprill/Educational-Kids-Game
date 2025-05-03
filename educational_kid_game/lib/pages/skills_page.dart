import 'package:educational_kid_game/widgets/circular_widget.dart';
import 'package:educational_kid_game/widgets/customCard_widget.dart';
import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 75),
              width: 421,
              height: 71,
              color: Color.fromRGBO(229, 229, 229, 0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Verbal skills",
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(width: 21),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    height: 27,
                    width: 31,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Vector.png"),
                      ),
                    ),
                  ),
                  SizedBox(width: 14),

                  Text(
                    "3",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromRGBO(236, 192, 85, 1),
                    ),
                  ),
                  SizedBox(width: 9),

                  Image.asset(height: 25, width: 28, "assets/images/jewel.png"),
                  SizedBox(width: 9),

                  Text(
                    "213",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromRGBO(2, 161, 251, 1),
                    ),
                  ),
                ],
              ),
            ),

            // SizedBox(height: 53),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(height: 35),

                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Center(child: CustomcardWidget(title: 'Unit 1')),
                      Positioned(
                        top: -50,
                        left: 140,
                        child: Image.asset(
                          width: 124,
                          height: 98,
                          "assets/images/horse.png",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 64),

                  CircularWidget(
                    lock: false,
                    pathImage: 'assets/images/pencil.png',
                    point: 1,
                    title: 'Intro',
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularWidget(
                        lock: false,
                        pathImage: 'assets/images/book.png',
                        point: 1,
                        title: 'Phrases',
                      ),
                      SizedBox(width: 17),
                      CircularWidget(
                        lock: false,
                        pathImage: 'assets/images/bike.png',
                        point: 1,
                        title: 'Travel',
                      ),
                    ],
                  ),
                  CircularWidget(lock: true, pathImage: null, point: 1, title: '',),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularWidget(lock: true, pathImage: null, point: null, title: '',),
                      SizedBox(width: 17),
                      CircularWidget(lock: true, pathImage: null, point: null, title: '',),
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
