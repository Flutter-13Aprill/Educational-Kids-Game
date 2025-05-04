import 'package:flutter/material.dart';
import 'package:project3/CustomWidgets/ProfileTab/friends_mini_card.dart';
import 'package:project3/CustomWidgets/ProfileTab/profile_card.dart';
import 'package:project3/CustomWidgets/ProfileTab/statistcs_cards.dart';
import 'package:project3/CustomWidgets/ProfileTab/user_card.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        UserCard(),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FriendsMiniCard(),
              SizedBox(height: 16),
              Text(
                'Statistics',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),

              StatistcsCards(),
            ],
          ),
        ),
        ProfileCard(
          title: "Invite your friends",
          description:
              "Tell your friends it’s free and fun to learn on Mental up!",
          imagePath: "assets/images/cat.png",
        ),
      ],
    );
  }
}
