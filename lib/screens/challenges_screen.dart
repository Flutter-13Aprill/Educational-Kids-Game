import 'package:flutter/material.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF9F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Title
              const Text(
                'Challenges',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              // 🟩 Main Challenge Card
              _challengeCard(
                imagePath: 'assets/images/challenge_main.png',
                title: 'Complete 1000 word streak',
                subtitle: 'Win 1000XP along with 300 diamonds.',
              ),

              const SizedBox(height: 24),

              // 🔸 Achievements Section
              const Text(
                'Achievements',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),

              // 🌿 Achievement Cards
              _achievementCard(
                imagePath: 'assets/images/achievement_plant1.png',
                title: 'Lorem Ipsum',
                subtitle:
                    'is simply dummy text of the printing and typesetting industry.',
              ),
              const SizedBox(height: 12),

              _achievementCard(
                imagePath: 'assets/images/achievement_plant2.png',
                title: 'Lorem Ipsum',
                subtitle:
                    'is simply dummy text of the printing and typesetting industry.',
              ),
              const SizedBox(height: 12),

              _achievementCard(
                imagePath: 'assets/images/achievement_ball.png',
                title: 'Lorem Ipsum',
                subtitle:
                    'is simply dummy text of the printing and typesetting industry.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ✅ Challenge Card Widget
  Widget _challengeCard({
    required String imagePath,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          Image.asset(imagePath, height: 60),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(subtitle, style: const TextStyle(fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ✅ Achievement Card Widget
  Widget _achievementCard({
    required String imagePath,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          Image.asset(imagePath, height: 50),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(subtitle, style: const TextStyle(fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
