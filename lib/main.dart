// Importing necessary packages
import 'package:educational_kids_game/Login-Screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MentalUpApp()); // Running the main app widget
}
// Root widget of the app
class MentalUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Sets the starting screen of the app to Login_Screen
      home: Login_Screen(),
    );
  }
}