import 'package:educational_kids_game/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Stateless login form widget
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // Username input field
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Username",
                hintStyle: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: const Color.fromRGBO(0, 0, 0, 0.4),
                ),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          SizedBox(height: 24),

          // Password input field
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),

            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: const Color.fromRGBO(0, 0, 0, 0.4),
                ),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),

          // Forgot Password link (non-functional)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 56),
            alignment: Alignment.centerRight,
            child: Text(
              "Forgot Password?",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 24),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },

            // GO button navigates to HomeScreen
            child: Container(
              height: 58,
              width: 316,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromRGBO(235, 159, 74, 1),
              ),
              child: Center(
                child: Text(
                  "GO",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 41),

          // Sign-up (no action assigned)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have account yet?",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),

              Text(
                " Sign Up",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Color(0xff77b29f),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
