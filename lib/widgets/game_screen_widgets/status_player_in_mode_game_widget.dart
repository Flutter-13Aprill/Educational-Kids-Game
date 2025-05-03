import 'package:flutter/material.dart';

/// [StatusPlayerInModeGameWidget] displays the player's status within a specific game mode,  
/// including the game name, score, and number of diamonds.
class StatusPlayerInModeGameWidget extends StatelessWidget {
  const StatusPlayerInModeGameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: Color(0xffe5e5e5),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 32,

        children: [
          
          Text('Verbal skills',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w400,
            ),
          ),

          SizedBox(

            height: 60,
            width: 60,
            child: Row(

              spacing: 4,
              children: [
                
                Image.asset('assets/icons/game_screen_icons/Vector (3).png'),
                Text('3',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffECC055),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(

            height: 60,
            width: 80,
            child: Row(

              spacing: 4,
              children: [
                Image.asset('assets/icons/game_screen_icons/Vector (6).png'),
                Text('213',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff02A1FB),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}