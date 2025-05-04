import 'package:flutter/material.dart';
import 'package:project3/CustomWidgets/ChallengesTab/challenge_card.dart';

class ChallengesTab extends StatelessWidget {
  const ChallengesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Challenges'), centerTitle: true),
      body: ListView(
        children: [
          ChallengeCard(
            title: "Complete 1000 word streak",
            description: "Win 1000XP along with 300 diamonds.",
            imagePath: "assets/images/girl.png",
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Achievements",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          ChallengeCard(
            title: "Lorem Ipsum ",
            description:
                "is simply dummy text of the printing and typesetting industry.",
            imagePath: "assets/images/leaves.png",
          ),
          ChallengeCard(
            title: "Lorem Ipsum ",
            description:
                "is simply dummy text of the printing and typesetting industry.",
            imagePath: "assets/images/cactus.png",
          ),
          ChallengeCard(
            title: "Lorem Ipsum ",
            description:
                "is simply dummy text of the printing and typesetting industry.",
            imagePath: "assets/images/basketball.png",
          ),
        ],
      ),
    );
  }
}
