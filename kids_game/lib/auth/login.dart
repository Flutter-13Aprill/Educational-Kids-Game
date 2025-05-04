import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kids_game/view/homescreen.dart';

// Login screen widget
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 244, 242),
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 249, 244, 242)),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // App title with colorful letters
            Padding(
              padding: const EdgeInsets.all(16),
              child: RichText(
                text: TextSpan(
                  children: [
                    // Colorful title letters
                    TextSpan(
                      text: 'M',
                      style: TextStyle(
                        color: Colors.amber[800],
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'E',
                      style: TextStyle(
                        color: Color.fromARGB(255, 52, 172, 118),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'N',
                      style: TextStyle(
                        color: Color.fromARGB(255, 158, 85, 241),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'T',
                      style: TextStyle(
                        color: Color.fromARGB(255, 82, 129, 196),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'A',
                      style: TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'L',
                      style: TextStyle(
                        color: Color.fromARGB(255, 52, 172, 118),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '  ',
                      style: TextStyle(
                        color: Colors.amber[800],
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '^',
                      style: TextStyle(
                        color: Color.fromARGB(255, 158, 85, 241),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'U',
                      style: TextStyle(
                        color: Color.fromARGB(255, 82, 129, 196),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'P',
                      style: TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '^',
                      style: TextStyle(
                        color: Color.fromARGB(255, 52, 172, 118),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Username input field
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff78746d),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),

            // Password input field
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff78746d),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),

            // Forgot password button
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),

            // GO button to navigate to HomeScreen
            Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Color(0xffEB9F4A),
                      ),
                      width: 311,
                      height: 56,
                    ),
                  ),
                ),
                Text(
                  'GO',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Color(0xffffffff),
                  ),
                ),
              ],
            ),

            // Sign Up text link
            Padding(
              padding: const EdgeInsets.all(16),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Don’t have account yet?",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(
                        color: Color.fromARGB(255, 52, 172, 118),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ),

            // Bottom image illustration
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.asset(
                  'assets/images/pic1.png',
                  height: 400,
                  width: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
