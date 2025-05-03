import 'package:educational_kid_game/widgets/statCard_widget.dart';
import 'package:flutter/material.dart';

class ChallengesPage extends StatelessWidget {
  const ChallengesPage({super.key});

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
                // SizedBox(width: 37),
                Text(
                  "Challenges",
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              children: [
                Container(
                  // padding: ,
                  margin: EdgeInsets.all(31),
                  width: 378,
                  height: 116,
                  child: StatcardWidget(
                    pathImage: 'assets/images/Group.png',
                    point: 'Complete 1000 word\n streak',
                    title: 'Win 1000XP along with 300\n diamonds.',
                    imagHeight: 104,
                    imagWidth: 116,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Achievements", style: TextStyle(fontSize: 30)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(31),
                  width: 378,
                  height: 116,
                  child: StatcardWidget(
                    pathImage: 'assets/images/plant.png',
                    point: 'Lorem Ipsum',
                    title:
                        'is simply dummy text of\n the printing and\n typesetting industry.',
                    imagHeight: 104,
                    imagWidth: 116,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(31),
                  width: 378,
                  height: 116,
                  child: StatcardWidget(
                    pathImage: 'assets/images/Plant2.png',
                    point: 'Lorem Ipsum',
                    title:
                        'is simply dummy text of\n the printing and\n typesetting industry.',
                    imagHeight: 104,
                    imagWidth: 116,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(31),
                  width: 378,
                  height: 116,
                  child: StatcardWidget(
                    pathImage: 'assets/images/Basketball.png',
                    point: 'Lorem Ipsum',
                    title:
                        'is simply dummy text of\n the printing and\n typesetting industry.',
                    imagHeight: 104,
                    imagWidth: 116,
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
