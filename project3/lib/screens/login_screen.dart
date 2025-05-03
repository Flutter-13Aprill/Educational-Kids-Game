import 'package:flutter/material.dart';
import 'package:project3/widgets/page_handler.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/project_images/loginAppBarImage.png'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 400, height: 125),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              width: 325,
              height: 75,
              alignment: Alignment.centerRight,
              child: Text(
                'Forget Password?',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 316,
              height: 58,
              child: ElevatedButton(
                onPressed: () {

                  Navigator.pushReplacement((context), MaterialPageRoute(builder: (context) => PageHandler()));

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 235, 159, 74),
                ),
                child: Text(
                  'Go',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: RichText(
                text: TextSpan(
                  text: 'Don’t have account yet? ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign up !',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: const Color.fromARGB(255, 128, 179, 174),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              width: 422,
              height: 338,
              child: Image.asset('assets/project_images/loginBottomImage.png',fit: BoxFit.fill,),
            ),
          ],
        ),
      ),
    );
  }
}
