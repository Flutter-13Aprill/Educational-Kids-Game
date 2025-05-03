import 'package:educational_kids_game_app/widgets/profile_screen_widgets/following_widget.dart';
import 'package:flutter/material.dart';

class FriendBoardWidget extends StatelessWidget {
  const FriendBoardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Color.fromRGBO(0, 0, 0, 0.1)),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'FOLLOWING',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff02A1FB),
                ),
              ),

              Text(
                'FOLLOWERS',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
              ),
            ],
          ),

          Stack(
            children: [
              Divider(color: Color.fromRGBO(0, 0, 0, 0.1), thickness: 3),

              Divider(color: Color(0xff02A1FB), thickness: 3, endIndent: 190),
            ],
          ),

          FollowingWidget(
            friendLetter: 'H',
            friendName: 'Hardi',
            friendXP: '4367 XP',
            friendColor: Color(0xffAB70DF),
          ),

          Divider(color: Color.fromRGBO(0, 0, 0, 0.1), thickness: 3),

          FollowingWidget(
            friendLetter: 'K',
            friendName: 'Krishna',
            friendXP: '2234 XP',
            friendColor: Color(0xffDF7070),
          ),
        ],
      ),
    );
  }
}
