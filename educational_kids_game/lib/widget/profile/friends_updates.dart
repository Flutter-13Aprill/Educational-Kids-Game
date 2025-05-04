import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendsUpdates extends StatelessWidget {
  const FriendsUpdates({super.key});

  @override
  Widget build(BuildContext context) {
    // The main container that holds the entire "Friends Updates" section

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        height: 69,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Color.fromRGBO(0, 0, 0, 0.2)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Left side of the row: displays an emoji and text "Friends updates"
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("🎊 ", style: TextStyle(fontSize: 35)),
                  SizedBox(width: 6),
                  Text(
                    "Friends updates",
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              // Right side of the row: displays an arrow icon
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Color.fromRGBO(0, 0, 0, 0.2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
