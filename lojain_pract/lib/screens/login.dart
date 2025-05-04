import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:lojain_pract/screens/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 245, 242, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 20, 10, 10),

                  ///for text and colors
                  child: Row(
                    children: [
                      Text(
                        "M",
                        style: TextStyle(
                          fontFamily: "Ribeye",
                          fontSize: 40,
                          color: Colors.orangeAccent,
                        ),
                      ),
                      Text(
                        "E",
                        style: TextStyle(
                          fontFamily: "Ribeye",
                          fontSize: 40,
                          color: Colors.lightGreen,
                        ),
                      ),
                      Text(
                        "N",
                        style: TextStyle(
                          fontFamily: "Ribeye",
                          fontSize: 40,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                      Text(
                        "T",
                        style: TextStyle(
                          fontFamily: "Ribeye",
                          fontSize: 40,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Text(
                        "A",
                        style: TextStyle(
                          fontFamily: "Ribeye",
                          fontSize: 40,
                          color: Colors.amber,
                        ),
                      ),
                      Text(
                        "L",
                        style: TextStyle(
                          fontFamily: "Ribeye",
                          fontSize: 40,
                          color: Colors.lightGreen,
                        ),
                      ),
                      Text(
                        "^",
                        style: TextStyle(
                          fontFamily: "Ribeye",
                          fontSize: 40,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                      Text(
                        "u",
                        style: TextStyle(
                          fontFamily: "Ribeye",
                          fontSize: 40,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Text(
                        "p",
                        style: TextStyle(
                          fontFamily: "Ribeye",
                          fontSize: 40,
                          color: Colors.amber,
                        ),
                      ),
                      Text(
                        "^",
                        style: TextStyle(
                          fontFamily: "Ribeye",
                          fontSize: 40,
                          color: Colors.lightGreen,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 50, 40, 30),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SizedBox(
                    height: 58,
                    width: 316,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(235, 159, 74, 1),
                      ),
                      child: Text(
                        "GO",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 20, 10, 7),
                  child: Row(
                    children: [
                      Text(
                        "Dont`t have account yet?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromARGB(255, 95, 133, 51),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 368,
                  width: 428,
                  child: Image.asset(
                    "Assests/images/kids.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
