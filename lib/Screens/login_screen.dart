import 'package:flutter/material.dart';
import 'package:project3/Screens/navigation_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/login1.png',
              height: MediaQuery.of(context).size.height * 0.06,
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.1),

            TextField(
              decoration: InputDecoration(
                hintText: "Username",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                hintText: "Password",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
              ),
              obscureText: true,
            ),
            TextButton(
              child: Text(
                'Forgot Password?',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(235, 159, 74, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.3,
                  vertical: MediaQuery.of(context).size.height * 0.01,
                ),
              ),
              child: Text(
                'GO',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              onPressed:
                  () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => NavigationScreen()),
                  ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have account yet?",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Color.fromRGBO(65, 172, 120, 1)),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Spacer(),
            Image.asset('assets/images/login2.png', fit: BoxFit.fitWidth),
          ],
        ),
      ),
    );
  }
}
