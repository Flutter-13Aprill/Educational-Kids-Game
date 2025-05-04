import 'package:educational_kids_game/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default  an colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(235, 159, 74, 1),
        ),
      ),
      title: "Educational Kids Game",

      home: LogInScreen(),
    );
  }
}
