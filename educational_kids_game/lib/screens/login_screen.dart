import 'package:educational_kids_game/screens/bottom_navbar_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // This login screen uses Flutter’s layout widgets (Column, Padding, TextField, ElevatedButton, RichText) to structure the UI. It includes a logo, input fields for username and password, a "Forgot Password" link, and a button that navigates to the bottom navigation screen.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBF5F2),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32, right: 32, left: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/login-logo.png",
                  height: 60,
                  width: 250,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 32, right: 16, left: 16),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          label: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Username"),
                          ),
                          hintText: "Enter your username",
                          fillColor: Colors.white,

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          label: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Password"),
                          ),
                          hintText: "Enter your passowrd",
                          fillColor: Colors.white,

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavbarScreen(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xffEB9F4A)),
                    minimumSize: WidgetStatePropertyAll(Size(300, 50)),
                  ),
                  child: Text(
                    "GO",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: "Don’t have account yet?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: " Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff6f8c8a),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset("assets/images/login-image.png"),
            ),
          ),
        ],
      ),
    );
  }
}
