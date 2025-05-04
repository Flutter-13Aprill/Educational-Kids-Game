import 'package:flutter/material.dart';
import 'package:project3/CustomWidgets/ProfileTab/stat_card.dart';

class StatistcsCards extends StatelessWidget {
  const StatistcsCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.33,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: [
          StatCard(
            imagePath: "assets/images/fire.png",
            title: "3",
            subtitle: "Day Streak",
          ),
          StatCard(
            imagePath: "assets/images/thunder.png",
            title: "1432",
            subtitle: "Total XP",
          ),
          StatCard(
            imagePath: "assets/images/medal.png",
            title: "Bronze",
            subtitle: "Current League",
          ),
          StatCard(
            imagePath: "assets/images/finish.png",
            title: "0",
            subtitle: "Top 3 Finishes",
          ),
        ],
      ),
    );
  }
}
