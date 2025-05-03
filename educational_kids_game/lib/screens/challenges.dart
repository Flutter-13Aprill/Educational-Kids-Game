import 'package:flutter/material.dart';

class Challenging extends StatelessWidget {
  const Challenging({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: const SafeArea(
        child: MyChallengeAndAchievements(),
      ),
    );
  }
}

class MyChallengeAndAchievements extends StatelessWidget {
  const MyChallengeAndAchievements({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),

        Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xFFD9D9D9),
          alignment: Alignment.center,
          child: const Text(
            'Challenges',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //'challengeCard function'  returns a ListTile containing an image, a title, and a description."
              challengeCard(
                imagePath: 'assets/pic/girl.png',
                title: 'Complete 1000 word streak',
                subtitle: 'Win 1000XP along with 300 diamonds.',
              ),
              const SizedBox(height: 20),
              const Text(
                'Achievements',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              achievementCard('assets/pic/stuck.png'),
              achievementCard('assets/pic/plant.png'),
              achievementCard('assets/pic/ball.png'),
            ],
          ),
        ),
      ],
    );
  }

  static Widget challengeCard({required String imagePath, required String title, required String subtitle}) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: ListTile(
        leading: Image.asset(imagePath, width: 70),
        title: Text(
          title,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }

//Function to create an achievement card
  static Widget achievementCard(String imagePath) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: ListTile(
        leading: Image.asset(imagePath, width: 70),
        title: const Text(
          'Lorem Ipsum',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        subtitle: const Text(
          'is simply dummy text of the printing and typesetting industry.',
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}
