import 'package:flutter/material.dart';

// -- Screen
import 'package:educational_kids_game_app/screens/game_screen.dart';

// -- Widgets 
import 'package:educational_kids_game_app/widgets/home_screen_widgets/status_player_widget.dart';
import 'package:educational_kids_game_app/widgets/home_screen_widgets/game_widget.dart';

/// [HomeScreen] is the first screen the player sees, displaying the games available in the app.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBF5F2),
      appBar: AppBar(
        surfaceTintColor:  Color(0xffFBF5F2),
        backgroundColor: Color(0xffFBF5F2),
        
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 20),

          child: StatusPlayerWidget()
        ),
      ),
      body: SingleChildScrollView(
        
        child: Container(
          
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
      
              SizedBox(height: 53),
      
              GameWidget(
                nameOfGame: 'Logical reasoning', 
                score: 18, 
                gameProgressBar: 35
                ),
      
              SizedBox(height: 36),
      
              GameWidget(
                nameOfGame: 'Artistic thinking',
                score: 35,
                gameProgressBar: 95
                ),
      
      
              SizedBox(height: 36),
      
              GameWidget(
                nameOfGame: 'Verbal skills',
                score: 3,
                gameProgressBar: 12,
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => GameScreen(gameProgressBar: 13, score: 3,)))
                ),

              SizedBox(height: 36),
              
            ],
          ),
        ),
      ),

    );
  }
}
