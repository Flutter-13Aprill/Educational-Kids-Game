import 'package:educational_kids_game/widget/profile/Statistics_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileStatistics extends StatelessWidget {
  const ProfileStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title for the "Statistics" section
        Text("Statistics", style: GoogleFonts.roboto(fontSize: 30)),

        // First row containing two Statistics cards: Day Streak and Total XP
        Row(
          children: [
            // StatisticsCard widget for displaying Day Streak
            StatisticsCard(
              title: "Day Streak",
              img: "images/fire.png",
              val: "3",
            ),
            SizedBox(width: 20),
            StatisticsCard(
              title: "Total XP",
              img: "images/lightning.png",
              val: "1432",
            ),
          ],
        ),
        SizedBox(height: 16),

        // Second row containing two Statistics cards: Current League and Day Streak
        Row(
          children: [
            // StatisticsCard widget for displaying Current League
            StatisticsCard(
              title: "Current League",
              img: "images/noto_3rd-place-medal.png",
              val: "Bronze",
            ),
            SizedBox(width: 20),
            StatisticsCard(
              title: "Top 3 Finishes",
              img: "images/bx_medal.png",
              val: "0",
            ),
          ],
        ),
      ],
    );
  }
}
