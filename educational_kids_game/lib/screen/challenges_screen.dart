import 'package:educational_kids_game/widget/challenges/challenges_bar.dart';
import 'package:educational_kids_game/widget/challenges/complete_card.dart';
import 'package:educational_kids_game/widget/challenges/uncomplete_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// StatelessWidget that represents the Challenges screen of the app
class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // Align children to the left
      children: [
        Challengesbar(),
        SizedBox(height: 31),
        UncompleteCard(), // Card showing uncompleted challenge
        SizedBox(height: 31),

        // Section title for achievements
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Text("Achievements", style: GoogleFonts.roboto(fontSize: 30)),
        ),
        SizedBox(height: 31),

        // Cards showing completed achievements
        CompleteCard(img: "images/1.png"),
        SizedBox(height: 42),
        CompleteCard(img: "images/2.png"),
        SizedBox(height: 42),
        CompleteCard(img: "images/3.png"),
        SizedBox(height: 42),
      ],
    );
  }
}
