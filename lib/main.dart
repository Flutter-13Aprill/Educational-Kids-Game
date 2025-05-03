import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// --- Screen
import 'package:educational_kids_game_app/screens/login_screen.dart';


void main() {

  // Only orientation for this app is Portia up
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     // Removes the default visual effect when tapping a clickable widget.
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
