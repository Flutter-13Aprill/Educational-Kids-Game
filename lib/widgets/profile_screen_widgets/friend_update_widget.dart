import 'package:flutter/material.dart';

class FriendUpdateWidget extends StatelessWidget {
  const FriendUpdateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      margin: EdgeInsets.symmetric(horizontal: 24),
      padding: EdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.1), width: 3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('🎊', style: TextStyle(fontSize: 40)),

          Text(
            'Friend Updates',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),

          Icon(
            Icons.keyboard_arrow_right_rounded,
            size: 40,
            color: Color.fromRGBO(0, 0, 0, 0.2),
          ),
        ],
      ),
    );
  }
}
