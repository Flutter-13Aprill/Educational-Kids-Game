import 'package:flutter/material.dart';

class FollowingWidget extends StatelessWidget {
  const FollowingWidget({super.key, required this.friendLetter, required this.friendName, required this.friendXP, required this.friendColor});

  final String friendLetter;
  final String friendName;
  final String friendXP;
  final Color friendColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor:friendColor,
            child: Text(friendLetter, style: TextStyle(color: Colors.white)),
          ),

          SizedBox(width: 16),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                friendName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              Text(
                friendXP,
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromRGBO(0, 0, 0, 0.4),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),

          Spacer(),

          Image.asset('assets/icons/profile_screen_icons/Group.png'),
        ],
      ),
    );
  }
}
