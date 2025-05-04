import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTitle extends StatelessWidget {
  final String title;
  final int numCrown;
  const HomeTitle({super.key, required this.title, required this.numCrown});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Title Text
        Text(
          title,
          style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 30),
        ),
        Row(
          // Crown display
          children: [
            // Number of crowns earned
            Image.asset("images/crown.png", height: 27),
            Text(
              "$numCrown /40 ",
              style: GoogleFonts.roboto(
                color: Color.fromRGBO(0, 0, 0, 0.6),
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
