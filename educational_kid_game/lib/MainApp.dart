import 'package:educational_kid_game/pages/login_page.dart';
import 'package:flutter/material.dart';
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      // todo : add text in home page for top icons
      home: LoginPage(),
    );
  }
}
