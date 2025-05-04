import 'package:flutter/material.dart';
import 'package:kids_game/auth/login.dart';
import 'package:kids_game/view/homescreen.dart';
import 'package:kids_game/view/profile.dart';
import 'package:kids_game/view/verbal%D9%80skills.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Profile());
  }
}
