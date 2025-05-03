import 'package:flutter/material.dart';

class TargetScreen extends StatelessWidget {
  const TargetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(229, 229, 229, 0.8),
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          'Challenges',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ✅ Challenge Box
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300, width: 3),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/Group.png',
                      width: 90,
                      height: 120,
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Complete 1000 word streak',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          SizedBox(height: 4),
                          Text('Win 1000XP along with 300 diamonds.',
                              style: TextStyle(fontSize: 13)),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 24),
              const Text('Achievements',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

              const SizedBox(height: 16),
              buildAchievement(
                imagePath: 'assets/images/plant_pink.png',
                title: 'Lorem Ipsum',
                description:
                    'is simply dummy text of the printing and typesetting industry.',
              ),
              const SizedBox(height: 12),
              buildAchievement(
                imagePath: 'assets/images/plant.png',
                title: 'Lorem Ipsum',
                description:
                    'is simply dummy text of the printing and typesetting industry.',
              ),
              const SizedBox(height: 12),
              buildAchievement(
                imagePath: 'assets/images/ball.png',
                title: 'Lorem Ipsum',
                description:
                    'is simply dummy text of the printing and typesetting industry.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAchievement({
    required String imagePath,
    required String title,
    required String description,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300, width: 3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image.asset(imagePath, width: 90, height: 120),
          const SizedBox(width: 12),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 18),
                children: [
                  TextSpan(
                      text: "$title\n",
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: description),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
