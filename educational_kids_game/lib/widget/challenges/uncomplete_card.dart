import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Widget showing an uncompleted challenge with an image and description
class UncompleteCard extends StatelessWidget {
  const UncompleteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        width: double.infinity,
        height: 116,
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Color.fromRGBO(0, 0, 0, 0.2)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            SizedBox(width: 13),
            Image.asset("images/Group.png"),
            SizedBox(width: 10),
            Column(
              children: [
                Text(
                  "Complete 1000 word\nstreak",
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Win 1000XP along with 300\ndiamonds.",
                  style: GoogleFonts.roboto(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
