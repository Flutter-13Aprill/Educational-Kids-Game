import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// OpenCard widget which represents a card with a title, progress indicator, and crown image
class OpenCard extends StatefulWidget {
  final String title;
  final double val;

  const OpenCard({super.key, required this.title, required this.val});

  @override
  State<OpenCard> createState() => _OpenCardState();
}

class _OpenCardState extends State<OpenCard> {
  @override
  Widget build(BuildContext context) {
    // Container for the card
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(196, 196, 196, 0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 227,
      width: 179,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(height: 17),
              Text(
                widget.title,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 19),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset("images/crown.png", height: 27),
                    SizedBox(height: 6),
                  ],
                ),
                SizedBox(
                  width: 118,
                  height: 14,
                  child: LinearProgressIndicator(
                    value: widget.val,
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
          ),
        ],
      ),
    );
  }
}
