import 'package:flutter/material.dart';
import '/screens/phase_one.dart';


class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    double textFieldHeight = 46;
    double textFieldHorizontalPadding = 30;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFBF5F2), Color(0xFFFBF5F2)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
            const SizedBox(height: 100),

              Center(
                child: Image.asset(
                  'assets/pic/text.png',
                  height: 40,
                  fit: BoxFit.contain,
                ),
              ),
              
              //Username field
              const SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: textFieldHorizontalPadding, vertical: 6),
                child: TextField(
                  style: const TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: const TextStyle(color: Colors.grey, fontSize: 12),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    constraints: BoxConstraints(
                      minHeight: textFieldHeight,
                      maxHeight: textFieldHeight,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              //Password field
              Padding(
                padding: EdgeInsets.symmetric(horizontal: textFieldHorizontalPadding, vertical: 6),
                child: TextField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: const TextStyle(color: Colors.grey, fontSize: 12),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    constraints: BoxConstraints(
                      minHeight: textFieldHeight,
                      maxHeight: textFieldHeight,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              
              //
              Padding(
                padding: const EdgeInsets.only(right: 30.0, top: 8),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              //Navigate to PhaseOne page.
              const SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: textFieldHorizontalPadding),
                child: SizedBox(
                  height: textFieldHeight,
                  width: double.infinity,
                  child: ElevatedButton(
                  onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhaseOne()),
                   );
                   },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Go',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have account yet?",
                    style: TextStyle(color: Colors.black,fontSize: 12),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                       color: Color.fromARGB(255, 84, 164, 146),
                      fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              ),

              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Image.asset(
                  'assets/pic/kids.png',
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
