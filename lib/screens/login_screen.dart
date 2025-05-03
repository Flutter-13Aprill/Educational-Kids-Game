import 'package:flutter/material.dart';

// --- Screens
import 'package:educational_kids_game_app/screens/navigation_screen.dart';

/// [LoginScreen] is the first screen the user sees when opening the app.
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBF5F2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 56),

            child: Column(
              children: [

                SizedBox(height: 96),

                Image.asset('assets/images/login_screen_images/MENTAL ^up^.png',width: 288,),

                SizedBox(height: 65),

                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(0, 0, 0, 102),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(24),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),

                SizedBox(height: 24),

                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(0, 0, 0, 102),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(24),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),

                SizedBox(height: 24),

                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forget your password?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),

                SizedBox(height: 24),

                TextButton(
                  onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavigationScreen())),
                  child: Container(
                    alignment: Alignment.center,
                    width: 316,
                    height: 58,
                    decoration: BoxDecoration(
                      color: Color(0xffEB9F4A),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      'Go',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 32 ),

                RichText(
                  text: TextSpan(
                    children: <InlineSpan>[
                      TextSpan(
                        text: 'Don’t have account yet?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      TextSpan(
                        text: ' Sign up',
                        style: TextStyle(
                          color: Color(0xff5ba8ba),
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16),
              ],
            ),
          ),

          SizedBox(height: 16),

          Image.asset(
            'assets/images/login_screen_images/Screenshot 2022-01-25 at 1.24 1.png',
            fit: BoxFit.contain,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
