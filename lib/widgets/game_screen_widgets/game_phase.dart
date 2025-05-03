import 'package:flutter/material.dart';

/// [GamePhase] represents the phase of the game, as the name suggests.
class GamePhase extends StatelessWidget {
  const GamePhase({super.key,  this.phaseName , this.score, this.imagePath,});

  final String? phaseName;
  final int? score;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Stack(
        
          children: [
        
            Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                border: Border.all(color: Color(0xffC4C4C4), width: 10)
              ),
              child: Container(
                width: 110,
                height: 110,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xff72BFC7),
                  borderRadius: BorderRadius.circular(55)
                ),
                child: Image.asset(imagePath ?? 'assets/icons/game_screen_icons/Vector (5).png'),
              ),
            ),
        
            Positioned(
              bottom: 30,
              right: 0,
              child: Stack(
                children: [
                  Image.asset('assets/icons/game_screen_icons/Vector (3).png'),
                  Positioned(
                    right: 11,
                    top: 6,
                    child: Text('${score ?? ''}', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400))
                    )
                ],
              )
              )
          ],
        ),

        SizedBox(height: 16),

        Text(phaseName ?? '', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),)
      ],
    );
  }
}