import 'package:educational_kids_game/widget/profile/friends_updates.dart';
import 'package:educational_kids_game/widget/profile/invite_friends.dart';
import 'package:educational_kids_game/widget/profile/profile_Statistics.dart';
import 'package:educational_kids_game/widget/profile/profile_bar.dart';
import 'package:educational_kids_game/widget/profile/profile_friends.dart';
import 'package:educational_kids_game/widget/profile/profile_title.dart';
import 'package:flutter/material.dart';

// Profile screen displaying user info, updates, and social features
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Top bar with user info
        ProfileBar(),
        SizedBox(height: 28),
        ProfileTitle(),
        Container(
          margin: EdgeInsets.only(top: 35),
          width: double.infinity,
          height: 1,
          color: Color.fromRGBO(0, 0, 0, 0.2),
        ),
        SizedBox(height: 16),
        FriendsUpdates(),
        SizedBox(height: 35),
        // User statistics
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: ProfileStatistics(),
        ),
        SizedBox(height: 35),
        // List of friends
        ProfileFriends(),
        SizedBox(height: 28),
        // Option to invite more friends
        InviteFriends(),
        SizedBox(height: 16),
      ],
    );
  }
}
