import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTitle extends StatelessWidget {
  const ProfileTitle({super.key});

  @override
  Widget build(BuildContext context) {
    // Padding around the entire Row to give it some space

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // The left column containing the user's information
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nidhi Pandya", style: GoogleFonts.roboto(fontSize: 30)),
              Text(
                "Nidhi12",
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
              ),

              // Display the "Joined" text with an icon and the date the user joined
              Row(
                children: [
                  Icon(
                    Icons.access_time_filled,
                    size: 20,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Joined March 2022",
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // The right section contains the user's profile image (ellipse-shaped)
          Image.asset("images/ellipse.png"),
        ],
      ),
    );
  }
}
