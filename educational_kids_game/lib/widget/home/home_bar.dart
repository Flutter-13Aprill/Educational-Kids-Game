import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// A simple top bar for the home screen
class HomeBar extends StatelessWidget {
  const HomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      color: Color.fromRGBO(229, 229, 229, 0.8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 47),
              Image.asset("images/fire.png", height: 29),
              SizedBox(width: 10),
              Text(
                "3",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: Color(0xffEB9F4A),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset("images/box.png", height: 29),
              SizedBox(width: 10),
              Text(
                "1432 XP",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: Color(0xff338F9B),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset("images/heart.png", height: 29),
              SizedBox(width: 9),
              Image.asset("images/in.png"),
              SizedBox(width: 49),
            ],
          ),
        ],
      ),
    );
  }
}
