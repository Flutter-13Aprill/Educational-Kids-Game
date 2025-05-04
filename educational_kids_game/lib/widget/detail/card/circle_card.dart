import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// CircleCard widget to display a circular image with a title and a value indicator
class CircleCard extends StatelessWidget {
  final String img;
  final String title;
  final String val;

  const CircleCard({
    super.key,
    required this.img, // Path to the image inside the circle
    required this.title, // Title for the card

    required this.val, // Value displayed near the crown icon
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            // Outer circle with a light gray background
            Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffC4C4C4),
              ),
            ),

            // Inner circle with a blue background and white border
            Container(
              height: 115,
              width: 115,

              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 5),
                shape: BoxShape.circle,
                color: Color(0xff72BFC7),
              ),
            ),

            // Image inside the inner circle
            Image.asset(img),

            // Positioned crown icon and value text
            Positioned(
              right: 0,
              bottom: 20,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset("images/crown1.png"),
                  Text(
                    val,
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(title, style: GoogleFonts.roboto(fontSize: 20)),
      ],
    );
  }
}
