import 'package:educational_kids_game/Skill_Screen.dart';
import 'package:flutter/material.dart';

class Login_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF6F2), // Background color of the screen
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: Column(
                  children: [
                    SizedBox(height: 60), // Space from the top
                    Image.asset(
                      'assets/Logo.png', // Logo image
                      fit: BoxFit.cover,
                      width: 450,
                      height: 100,
                    ),
                    SizedBox(height: 30), // Space between logo and text fields
                    TextField(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600],
                      ),
                      decoration: InputDecoration(
                        hintText: "Username", // Placeholder for username input
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ), // Space between username and password fields
                    TextField(
                      obscureText: true, // Hides the text for password input
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600],
                      ),
                      decoration: InputDecoration(
                        hintText: "Password", // Placeholder for password input
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ), // Space before "Forgot Password?" text
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password?", // Link for password recovery
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(height: 30), // Space before the button
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFA500), // Button color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      Skill_Screen(), // Navigate to Skill_Screen
                            ),
                            (Route<dynamic> route) =>
                                false, // Remove all previous routes
                          );
                        },
                        child: Text(
                          "GO", // Button label
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30), // Space before the sign-up prompt
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account yet? ", // Sign-up prompt
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Sign Up", // Link to sign-up
                          style: TextStyle(
                            color: Color(0xFF6EC3A8),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 390,
            child: Image.asset(
              'assets/Login.png',
              fit: BoxFit.cover,
            ), // Background image for the login screen
          ),
        ],
      ),
    );
  }
}
