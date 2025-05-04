import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// A simple top bar for the Challenges screen
class Challengesbar extends StatelessWidget {
  const Challengesbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      width: double.infinity,
      color: Color.fromRGBO(229, 229, 229, 0.8),
      child: Center(
        child: Text("Challenges", style: GoogleFonts.roboto(fontSize: 30)),
      ),
    );
  }
}
