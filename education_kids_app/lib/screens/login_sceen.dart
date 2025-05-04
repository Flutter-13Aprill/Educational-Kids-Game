import 'package:education_kids_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 245, 242),
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 250, 245, 242)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 8,
        children: [
          Image.asset('assets/MENTAL.png', width: 260),

          SizedBox(height: 16),
          Padding( // this for user name textField 
            padding: const EdgeInsets.symmetric(horizontal: 56.0),
            child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  hintText: 'Username',
                  hintStyle: const TextStyle(color: Color.fromARGB(255, 126, 126, 126), fontWeight: FontWeight.bold),
                ),
              ),
          ),

          Padding( // this for password textField (same to user nsme)
            padding: const EdgeInsets.symmetric(horizontal: 56.0),
            child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: Color.fromARGB(255, 126, 126, 126),fontWeight: FontWeight.bold),
                ),
              ),
          ),
          
          Padding( // this for forgot password
            padding: const EdgeInsets.symmetric(horizontal: 56.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox( // this for elevated button
            width: MediaQuery.of(context).size.width * 0.74, // 80% of screen width
            height: MediaQuery.of(context).size.height * 0.065, // 7% of screen height
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 212, 148, 75)),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24), // smaller radius
                  ),),
              ),
              child: Text(
                'GO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
              },
            ),
          ),

          Padding( // this for sign up option
            padding: const EdgeInsets.symmetric(horizontal: 56.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      text: 'Don\'t have an account? ',
                      children: [
                        TextSpan(
                          text: 'Sign up',
                          style: TextStyle(
                            color: Color.fromARGB(255, 122, 168, 152),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ), 
                  ),
                ),
              ],
            ),
          ),
          
          SizedBox(height: 8),
          Image.asset('assets/dainasor.png'),
        ],
      ),
    );
  }
}
