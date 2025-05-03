import 'package:flutter/material.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});
  // This screen is built using Flutter layout widgets (ListView, Column, Row, Container, Image, Text) to display a scrollable list of achievement cards, each showing an image, title, and description inside styled containers.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: AppBar(
            backgroundColor: Color(0xCCE5E5E5),
            title: Text(
              "Challenges",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
            automaticallyImplyLeading: false,
          ),
        ),
      ),

      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Container(
                          alignment: Alignment.center,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Color(0xCCE5E5E5),
                              width: 3,
                            ),
                          ),
                          padding: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: Image.asset(
                                  "assets/images/challenges-image1.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Complete 1000 word streak",
                                      style: TextStyle(
                                        fontSize: 21,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "Win 1000XP along with 300 diamonds.",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Achievements",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Container(
                          alignment: Alignment.center,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Color(0xCCE5E5E5),
                              width: 3,
                            ),
                          ),
                          padding: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: Image.asset(
                                  "assets/images/challenges-image2.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Lorem Ipsum",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "is simply dummy text of the printing and typesetting industry.",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(
                          // horizontal: 16,
                          vertical: 12,
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: 110,
                          // width: 360,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Color(0xCCE5E5E5),
                              width: 3,
                            ),
                          ),
                          padding: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: Image.asset(
                                  "assets/images/challenges-image3.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Lorem Ipsum",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "is simply dummy text of the printing and typesetting industry.",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(
                          // horizontal: 16,
                          vertical: 12,
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: 110,
                          // width: 360,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Color(0xCCE5E5E5),
                              width: 3,
                            ),
                          ),
                          padding: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: Image.asset(
                                  "assets/images/challenges-image4.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Lorem Ipsum",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "is simply dummy text of the printing and typesetting industry.",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
