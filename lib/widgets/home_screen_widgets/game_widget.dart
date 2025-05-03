import 'package:flutter/material.dart';

// -- Widget
import 'package:educational_kids_game_app/widgets/home_screen_widgets/game_card_widget.dart';

/// [GameWidget] is a layout for the game mode, displaying the game name,  
/// player's score, and available levels.
/// 
/// Takes four parameters:
///
/// [nameOfGame] – A `String` representing the name of the game.
/// 
/// [score] – An `int` representing the player’s current score.
/// 
/// [gameProgressBar] – A `double` indicating the player's progress in the game.
/// 
/// [onTap] – A `callback function` triggered when the enabled widget is tapped, and used to navigate to the game screen.
/// 
class GameWidget extends StatelessWidget {

  const GameWidget({super.key, required this.nameOfGame, required this.score, required this.gameProgressBar, this.onTap});
  
  final String nameOfGame;
  final double gameProgressBar;
  final int score;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        
            Text(nameOfGame, style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400)),
        

        
            Row(
              spacing: 4,
              children: [
                
                Image.asset('assets/icons/home_screen_icons/game_widget_icon/Vector (3).png'),
                
                Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Text('$score/40', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400))
                  )
              ],
            ),



          ],
        ),

        SizedBox(height: 16),

        Row(

          spacing: 24,
          children: [

            GameCardWidget(isGameEnable: true, gameProgressBar: gameProgressBar, onTpa: onTap,),

            GameCardWidget(isGameEnable: false, gameProgressBar: null )
          ],
        )
      ],
    );
  }
}