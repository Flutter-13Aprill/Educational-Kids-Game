import 'package:educational_kids_game/widget/detail/card/circle_card.dart';
import 'package:educational_kids_game/widget/detail/card/unit_card.dart';
import 'package:educational_kids_game/widget/detail/detail_bar.dart';
import 'package:flutter/material.dart';

// Screen that displays detail view of a lesson/unit
class DetailsScreen extends StatelessWidget {
  final String title; // Title of the detail screen
  final int numCrown; // Number of crowns or progress indicator

  const DetailsScreen({super.key, required this.title, required this.numCrown});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Top bar showing title and crown count
          DetailBar(title: title, numCrown: numCrown),
          SizedBox(height: 58),

          // unit card
          UnitCard(val: 0.3),
          SizedBox(height: 79),
          CircleCard(img: "images/pencil1.png", title: "Intro", val: "1"),
          SizedBox(height: 5),

          // Row of two OpenCircle cards
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleCard(img: "images/book.png", title: "Phrases", val: "1"),
              SizedBox(width: 17),
              CircleCard(img: "images/bike.png", title: "Travel", val: "1"),
            ],
          ),
          SizedBox(height: 5),

          // Locked circle (not yet available to the user)
          CircleCard(img: "images/smallLock.png", title: "", val: ""),
          SizedBox(height: 5),

          // Row of two locked circles
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleCard(img: "images/smallLock.png", title: "", val: ""),
              SizedBox(width: 17),

              CircleCard(img: "images/smallLock.png", title: "", val: ""),
            ],
          ),
        ],
      ),
    );
  }
}
