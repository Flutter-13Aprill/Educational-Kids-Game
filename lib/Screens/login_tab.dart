import 'package:flutter/material.dart';
import 'package:project3/Screens/main_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Image.asset('assets/logo.png', height: 40)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: 'Username')),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            TextButton(child: Text('Forgot Password?'), onPressed: () {}),
            ElevatedButton(
              child: Text('GO'),
              onPressed:
                  () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen()),
                  ),
            ),
            TextButton(
              child: Text('Don’t have account yet? Sign Up'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
