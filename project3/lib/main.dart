import 'package:flutter/material.dart';
import 'package:project3/screens/login_screen.dart';

void main() {
  runApp(const MainApp());
}

//here where the app start on the login screen

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:LoginScreen()
    );
  }
}


