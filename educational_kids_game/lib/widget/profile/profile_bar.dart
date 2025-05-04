import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      width: double.infinity,
      color: Color.fromRGBO(229, 229, 229, 0.8),
      child: Center(
        // Center widget to align the text in the middle of the container
        child: Text("Profile", style: GoogleFonts.roboto(fontSize: 30)),
      ),
    );
  }
}
