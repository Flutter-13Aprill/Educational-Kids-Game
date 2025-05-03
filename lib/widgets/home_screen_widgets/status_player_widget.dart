import 'package:flutter/material.dart';


/// [StatusPlayerWidget] represents the player's status in the app, including streak, XP, and health.
class StatusPlayerWidget extends StatelessWidget {
  const StatusPlayerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: Color(0xffe5e5e5),
      height: 70,
      child: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 32,

        children: [
          
          SizedBox(

            height: 60,
            width: 60,
            child: Row(

              spacing: 10,
              children: [

                Image.asset('assets/icons/home_screen_icons/Vector.png'),
                Text('3',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffEB9F4A),
                  ),
                ),

              ],
            ),
          ),

          SizedBox(

            height: 60,
            width: 143,
            child: Row(

              spacing: 10,
              children: [
                
                Image.asset('assets/icons/home_screen_icons/Vector (1).png'),
                Text('1432 XP',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff338F9B),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(

            height: 60,
            width: 80,
            child: Row(

              spacing: 10,
              children: [
                Image.asset('assets/icons/home_screen_icons/Vector (2).png'),
                Text('∞',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w300,
                    color: Color(0xffDC3F00),
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
