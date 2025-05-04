import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// DetailBar widget used to display a title along with the crown and diamond values
class DetailBar extends StatelessWidget {
  final String title; // Title to display in the bar
  final int numCrown; // Number of crowns earned
  const DetailBar({super.key, required this.title, required this.numCrown});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      color: Color.fromRGBO(229, 229, 229, 0.8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 12),

          // Title text displaying the passed 'title' parameter
          Text(
            title,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 25,
            ),
          ),
          SizedBox(width: 7),

          // Row containing crown and diamond images along with their respective values
          Row(
            children: [
              Image.asset("images/crown.png", height: 27),
              SizedBox(width: 2),
              Text(
                "$numCrown",
                style: GoogleFonts.roboto(
                  color: Color(0xffECC055),
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                ),
              ),
              SizedBox(width: 9),
              Image.asset('images/diamond.png'),
              Text(
                "213",
                style: GoogleFonts.roboto(
                  color: Color(0xff02A1FB),
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: 12),
            ],
          ),
        ],
      ),
    );
  }
}
