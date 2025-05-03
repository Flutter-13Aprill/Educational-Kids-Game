import 'package:flutter/material.dart';


/// [GameCardWidget] is used to build game cards, as the name suggests.
class GameCardWidget extends StatelessWidget {
  const GameCardWidget({super.key, required this.isGameEnable, required this.gameProgressBar, this.onTpa});

  final bool isGameEnable;
  final double? gameProgressBar;
  final void Function()? onTpa;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {

        // ------------------------------------------
        // If the game is enable returns this clickable widget
        if (isGameEnable) {
          return InkWell(
            onTap: onTpa,
            child: Container(
              width: 180,
              height: 228,
              decoration: BoxDecoration(
                color: Color.fromRGBO(196, 196, 196, 0.4),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Container(
                margin: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      'Unit 1',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
                    ),
            
                    SizedBox(height: 120),
            
                    Row(
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
                                  color: Color(0xffC4C4C4),
                                ),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    width: gameProgressBar,
                                    decoration: BoxDecoration(
                                      color: Color(0xffECC055),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }

        // ------------------------------------------
        // If the game is disable returns this non-clickable widget
        return Container(
          width: 180,
          height: 228,
          decoration: BoxDecoration(
            color: Color.fromRGBO(196, 196, 196, 0.4),
            borderRadius: BorderRadius.circular(24),
          ),
          child: TextButton(
            onPressed: null,
            child: Center(
              child: Image.asset(
                'assets/icons/home_screen_icons/game_widget_icon/Vector (5).png',
              ),
            ),
          ),
        );
      },
    );
  }
}
