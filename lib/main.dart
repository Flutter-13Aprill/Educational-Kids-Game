import 'package:flutter/material.dart';
import 'package:project3/Screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(251, 245, 242, 1),
      ),
      title: 'Learning App',
      home: LoginScreen(),
    );
  }
}
