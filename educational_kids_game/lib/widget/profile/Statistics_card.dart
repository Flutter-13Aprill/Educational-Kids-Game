import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatisticsCard extends StatelessWidget {
  final String img;
  final String val;
  final String title;
  const StatisticsCard({
    super.key,
    required this.img, // Image path for the icon to be displayed on the card
    required this.val, // Value to be displayed on the card
    required this.title, // Title of the card
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61,
      width: 165,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Color.fromRGBO(0, 0, 0, 0.2)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          SizedBox(width: 19),

          // Display the image (icon) on the left side of the card
          Image.asset(img),
          SizedBox(width: 13),

          // Column for the text content: value and title
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(val, style: GoogleFonts.roboto(fontSize: 20)),
              Text(
                title,
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
