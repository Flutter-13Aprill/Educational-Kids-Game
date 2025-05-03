import 'package:flutter/material.dart';
import 'package:project3/Screens/login_tab.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      title: 'Learning App',
      home: LoginScreen(),
    );
  }
}
