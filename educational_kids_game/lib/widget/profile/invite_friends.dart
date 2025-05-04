import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InviteFriends extends StatelessWidget {
  const InviteFriends({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 377,
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Color.fromRGBO(0, 0, 0, 0.2)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(height: 17),

            // Row for displaying the image and text side by side
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 29),

                Image.asset("images/BlackCat.png", height: 116),
                SizedBox(width: 29),

                // Column for the text content on the right of the image
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title text: "Invite your friends"
                    Text(
                      "Invite your friends",
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),

                    Text(
                      "Tell your friends it’s \nfree and fun to learn \non Mental up!",
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {},
              child: Container(
                height: 47,
                width: 320,
                decoration: BoxDecoration(
                  color: Color(0xff02A1FB),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(2, 161, 251, 0.5),
                      offset: Offset(0, 4),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Center(
                  // Text inside the button
                  child: Text(
                    "INVITE FRIENDS",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 22),
          ],
        ),
      ),
    );
  }
}
