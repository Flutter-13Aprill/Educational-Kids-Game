import 'package:educational_kids_game/widget/auth/login.dart';
import 'package:flutter/material.dart';

// Stateless login screen with custom login form and images
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbf5f2), // Light background color

      body: ListView(
        children: [
          SizedBox(height: 49),

          // App logo centered at the top
          Center(child: Image.asset("images/MENTALup.png")),
          SizedBox(height: 60),
          // Custom login form widget
          Login(),

          // Bottom login image
          Image.asset("images/loginImg.png", fit: BoxFit.cover),
        ],
      ),
    );
  }
}
