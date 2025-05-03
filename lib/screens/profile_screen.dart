import 'package:flutter/material.dart';

// -- Widgets
import 'package:educational_kids_game_app/widgets/profile_screen_widgets/friend_board_widget.dart';
import 'package:educational_kids_game_app/widgets/profile_screen_widgets/invite_friends_widget.dart';
import 'package:educational_kids_game_app/widgets/profile_screen_widgets/basic_user_information_widget.dart';
import 'package:educational_kids_game_app/widgets/profile_screen_widgets/friend_update_widget.dart';
import 'package:educational_kids_game_app/widgets/profile_screen_widgets/statistics_widget.dart';

/// [ProfileScreen] displays the user's profile, their friends, and various player statistics.
class ProfileScreen extends StatelessWidget {

  const ProfileScreen({super.key});

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
            child: Text('Profile', style:  TextStyle(fontSize: 32, fontWeight: FontWeight.w400),)
            )
            ),
      ),

      body: SingleChildScrollView(
      
        child: Column(
        
          children: [
        
            BasicUserInformationWidget(),
        
            SizedBox(height: 32),
        
            Divider(thickness: 3, color: Color.fromRGBO(0, 0, 0, 0.1)),
        
            SizedBox(height: 16),

            FriendUpdateWidget(),
        
            SizedBox(height: 32),

            StatisticsWidget(),

            SizedBox(height: 32),
      
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              
                  Text('Friends', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400)),
      
                  Text('ADD FRIENDS', style: TextStyle(color: Color(0xff02A1FB), fontSize: 20, fontWeight: FontWeight.w600),)
                ],
              ),
            ),
            
            SizedBox(height: 16),
            
            FriendBoardWidget(),
            
            SizedBox(height: 24),
      
            InviteFriendsWidget(),
      
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}