import 'package:educational_kid_game/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 245, 242, 1),
      body: Scaffold(
        appBar: AppBar(backgroundColor: Color.fromRGBO(251, 245, 242, 1)),
        body: SafeArea(
          child: Container(
            color: Color.fromRGBO(251, 245, 242, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("assets/images/title.png"),
                SizedBox(height: 65),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 56),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Username",

                          contentPadding: EdgeInsets.only(
                            left: 32,
                            top: 16,
                            bottom: 16,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),

                            borderSide:
                                BorderSide
                                    .none, 
                          ),
                        ),
                      ),

                      SizedBox(height: 24),

                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            left: 32,
                            top: 16,
                            bottom: 16,
                          ),

                          hintText: "Password",
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                BorderSide
                                    .none,
                          ),
                        ),
                      ),

                      SizedBox(height: 25),

                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password?",

                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 21),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder)=>HomePage() ));
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(316, 58),
                          backgroundColor: Color.fromRGBO(235, 159, 74, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        // go to home page 
                        child: Text(
                          "Go",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 41),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don’t have account yet? ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Sign up",
                            style: TextStyle(
                              color: Colors.green[500],
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/kids.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: null,
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
