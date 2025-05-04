//import the packages
import 'package:flutter/material.dart';
import 'package:educational_kids_game/screens/login_screen.dart';
//main function
void main() {
  runApp(const MyApp());
}
//main class
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //first page
         home: LoginScreen(),
      );
   
    
  }
}

