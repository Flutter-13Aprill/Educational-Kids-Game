import 'package:flutter/material.dart';

/// [GamePhasePlayerStatus] represents the player's status in a specific game,  
/// including the player's score and a progress bar indicating the remaining levels.
class GamePhasePlayerStatus extends StatelessWidget {
  const GamePhasePlayerStatus({super.key, required this.gameProgressBar, required this.score});
  final double gameProgressBar;
  final int score;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 211,
          height: 140,
          decoration: BoxDecoration(
            color: Color(0xffE9E8E8),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 3, color: Color.fromRGBO(0, 0, 0, 0.2)),
          ),
          child: Column(
            children: [
              SizedBox(height: 64),
              Text(
                'Unit 1',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: [

                  Image.asset(
                    'assets/icons/home_screen_icons/game_widget_icon/Vector (4).png',
                  ),

                  SizedBox(
                    height: 26,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          width: 100,
                          height: 14,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffC4C4C4),
                          ),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: gameProgressBar,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xffECC055),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                   Container(
                    margin: EdgeInsets.only(top: 12),
                    child: Text('$score/40', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))
                    )
                ],
              ),
            ],
          ),
        ),

        Positioned(
          top: -50,
          right: 40,

          child: Image.asset(
            'assets/images/game_screen_images/Beep Beep Horse.png',
          ),
        ),
      ],
    );
  }
}
