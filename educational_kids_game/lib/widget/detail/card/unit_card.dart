import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// UnitCard widget representing a unit with a progress indicator, crown, and a decorative image
class UnitCard extends StatelessWidget {
  final double val; // Value for the progress indicator
  const UnitCard({super.key, required this.val});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        // Allows the horse image to overflow outside the card
        clipBehavior: Clip.none,
        children: [
          // The card container with a border and rounded corners
          Container(
            height: 128,
            width: 211,
            decoration: BoxDecoration(
              color: Color(0xffE9E8E8),
              border: Border.all(width: 3, color: Color.fromRGBO(0, 0, 0, 0.2)),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                SizedBox(height: 54),
                Text(
                  "Unit 1",
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                // Row containing the crown image and progress bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset("images/crown.png", height: 27),
                        SizedBox(height: 6),
                      ],
                    ),

                    // Progress indicator, showing the completion progress
                    SizedBox(
                      width: 118,
                      height: 14,
                      child: LinearProgressIndicator(
                        value: val,
                        backgroundColor: Color.fromRGBO(196, 196, 196, 1),
                        color: Color(0xffECC055),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.elliptical(7, 30),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: 44,
            top: -48,
            child: Image.asset("images/horse.png"),
          ),
        ],
      ),
    );
  }
}
