import 'package:educational_kid_game/pages/challenges_page.dart';
import 'package:educational_kid_game/widgets/frindCard_widget.dart';
import 'package:educational_kid_game/widgets/personalInfo_widget.dart';
import 'package:educational_kid_game/widgets/statCard_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 75),
            width: MediaQuery.of(context).size.width,
            height: 71,
            color: Color.fromRGBO(229, 229, 229, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Profile",
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          PersonalInfoWidget(),
          Divider(thickness: 3.0, color: Color.fromRGBO(0, 0, 0, 0.1)),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  height: 69,
                  width: 387,
                  margin: EdgeInsets.only(
                    top: 16,
                    bottom: 35,
                    left: 25,
                    right: 25,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                      width: 3,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        width: 40,
                        height: 40,
                        "assets/images/win.png",
                      ),
                      SizedBox(width: 16),

                      Text("Friends updates", style: TextStyle(fontSize: 20)),
                      Spacer(),

                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Statistics", style: TextStyle(fontSize: 30)),
                  ),
                ),
                SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StatcardWidget(
                      pathImage: "assets/images/fire.png",
                      point: "3",
                      title: "Day Streak",
                      imagHeight: 29,
                      imagWidth: 26,
                    ),
                    SizedBox(width: 20),
                    StatcardWidget(
                      pathImage: "assets/images/light.png",
                      point: "1432",
                      title: "Total XP",
                      imagHeight: 29,
                      imagWidth: 25,
                    ),
                  ],
                ),
                SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StatcardWidget(
                      pathImage: "assets/images/medal.png",
                      point: "Bronze",
                      title: "Current League",
                      imagHeight: 34,
                      imagWidth: 34,
                    ),
                    SizedBox(width: 20),
                    StatcardWidget(
                      pathImage: "assets/images/bx_medal.png",
                      point: "0",
                      title: "Top 3 Finishes",
                      imagHeight: 36,
                      imagWidth: 36,
                    ),
                  ],
                ),
                SizedBox(height: 35),
                FrindcardWidget(),
                Container(
                  margin: EdgeInsets.all(26),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(229, 229, 229, 0.8),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(

                            "assets/images/cat.png",
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Invite your friends",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "\nTell your friends it’s\n free and fun to learn\n on Mental up!",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 34, left: 29, right: 29),
                        width: 321,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (builder) => ChallengesPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(2, 161, 251, 1),
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 8,
                            shadowColor: Color.fromRGBO(2, 161, 251, 1),
                          ),
                          child: Text(
                            "INVITE FRIENDS",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
