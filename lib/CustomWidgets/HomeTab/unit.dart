import "dart:math";
import 'package:flutter/material.dart';
import 'package:project3/Screens/verbal_skills_tab.dart';

class Unit extends StatelessWidget {
  Unit({super.key, required this.unitTitle});
  double number1 = Random().nextInt(25) + 5;
  double number2 = Random().nextInt(25) + 2;

  final unitTitle;
  @override
  Widget build(BuildContext context) {
    final double progress = number1 / number2;
    final String fraction = "${number1.toInt()}/${number2.toInt()}";

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  unitTitle,
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Image.asset("assets/images/crown.png"),
                    Text(fraction),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerbalSkillsTab(),
                        ),
                      );
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.225,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(196, 196, 196, 0.4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Unit 1",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset("assets/images/crown.png"),
                                SizedBox(
                                  width: 50,
                                  child: LinearProgressIndicator(
                                    value: progress,
                                    color: Color.fromRGBO(236, 192, 85, 1),
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
                SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.225,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(196, 196, 196, 0.4),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset("assets/images/lock.png"),
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
