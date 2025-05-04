import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Widget representing a completed challenge card with an image and description
class CompleteCard extends StatelessWidget {
  final String img;
  const CompleteCard({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19),
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
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Image.asset(img),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lorem Ipsum ",
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "is simply dummy text of\nthe printing and\ntypesetting industry.",
                  style: GoogleFonts.roboto(
                    fontSize: 19,
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
