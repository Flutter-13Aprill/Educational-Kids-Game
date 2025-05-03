import 'package:flutter/material.dart';

// -- Widget 
import 'package:educational_kids_game_app/widgets/challenges_screen_widgets/achievement_widgets.dart';

/// [ChallengesScreen] shows available challenges for the player to complete.
class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBF5F2),
      appBar: AppBar(
        backgroundColor: Color(0xffFBF5F2),
        surfaceTintColor: Color(0xffFBF5F2),
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 20),
          child: Container(
            width: double.infinity,
            height: 72,
            alignment: Alignment.center,
            color: Color(0xffe5e5e5),
            child: Text('Challenges',style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400)),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
        
              SizedBox(height: 32),
        
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.1),width: 3),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
        
                    Image.asset('assets/images/challenges_screen_images/Group (4).png', width: 120,),
        
                    Column(
                      spacing: 8,
                      children: [
                        
                        SizedBox(
                          width: 218,
                          child: Text('Complete 1000 word streak', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400))
                        ),
        
                        SizedBox(
                          width: 218,
                          child: Text('Win 1000XP along with 300 diamonds.', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                        )
        
                      ],
                    )
                  ],
                ),
              ),
        
              SizedBox(height: 32,),
        
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Achievements', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400))
                ),
        
                SizedBox(height: 32),
        
                AchievementWidgets(imagePath: 'assets/images/challenges_screen_images/art.png'),
        
                SizedBox(height: 32),
        
                AchievementWidgets(imagePath: 'assets/images/challenges_screen_images/solid.png'),
        
                SizedBox(height: 32),
        
                AchievementWidgets(imagePath: 'assets/images/challenges_screen_images/Basketball.png'),

                SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
