import 'package:flutter/material.dart';

// -- Widgets
import 'package:educational_kids_game_app/widgets/game_screen_widgets/game_phase_player_status.dart';
import 'package:educational_kids_game_app/widgets/game_screen_widgets/status_player_in_mode_game_widget.dart';
import 'package:educational_kids_game_app/widgets/game_screen_widgets/game_phase.dart';

/// [GameScreen] displays the player's status and all phases of the selected game.
class GameScreen extends StatelessWidget {
  const GameScreen({super.key, required this.gameProgressBar, required this.score});

  final double gameProgressBar;
  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBF5F2),

      appBar: AppBar(
        leading: SizedBox(),
        surfaceTintColor:  Color(0xffFBF5F2),
        backgroundColor: Color(0xffFBF5F2),
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 8),
          child: StatusPlayerInModeGameWidget(),
        ),
      ),
      body: SingleChildScrollView(
      
        child: Container(

          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
                
            children: [
                
              SizedBox(height: 56),
                
              GamePhasePlayerStatus(gameProgressBar: gameProgressBar, score: score,),

              SizedBox(height: 64),

              GamePhase(phaseName: 'Into', score: 1, imagePath: 'assets/images/game_screen_images/Hands Pencil 1.png'),

              SizedBox(height: 42),

              Row(
                spacing: 32,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  GamePhase(phaseName: 'Phrases', score: 1, imagePath: 'assets/images/game_screen_images/Hands Book.png'),
                  GamePhase(phaseName: 'Travel', score: 1, imagePath: 'assets/images/game_screen_images/Dayflow Bike.png')
                ],
              ),

              SizedBox(height: 42),

              GamePhase(),

              SizedBox(height: 42),

              Row(
                spacing: 32,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  GamePhase(),
                  GamePhase()

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
