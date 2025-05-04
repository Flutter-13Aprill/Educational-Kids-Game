import 'package:flutter/material.dart';
import 'package:game_app_development/bottomnavigate.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernamecontroller=TextEditingController();
  final TextEditingController passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 243, 240),
      body: Center(
        child: Column(
          children: [
             Padding(
               padding: const EdgeInsets.only(top: 120),
               child: Image.asset('images/MENTAL ^up^.png'),
             ),
            
            SizedBox(height: 50,),
           
             
              Padding(
                padding: const EdgeInsets.symmetric(vertical:12 ,horizontal: 40),
                child: TextField(
                  controller:usernamecontroller,
                  decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                    hintText: 'username',
                    contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                    border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30),
                     borderSide: BorderSide.none
                    )
                  ),
                 ),
              ), 
              
             Padding(
               padding: const EdgeInsets.symmetric(vertical:12 , horizontal: 40),
               child: TextField(
                controller:passwordcontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Password',
                  contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                  border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(30),
                   borderSide: BorderSide.none
                  )
                ),
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric( horizontal: 40),
               child: Container(
                alignment: Alignment.centerRight,
                 child: TextButton(
                  onPressed: (){},
                  child: Text('Forgot Password?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 16))),
               ),
             ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 50),
                  backgroundColor: const Color.fromARGB(255, 214, 140, 50) , 
                  ),
                 onPressed: (){
                  Navigator.pushReplacement(
                    context,
                     MaterialPageRoute(builder: (context)=>Bottomnavigate()));
                 },
                 child: Text('GO',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
              ),

              TextButton(
               onPressed: (){},
               child: RichText(
                text: TextSpan(
                  children: [
                   TextSpan(text: "Don't have account yet?", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                   TextSpan(text: ' Sign Up', style: TextStyle(color: const Color.fromARGB(255, 39, 126, 84))),
                  ]
                ))),

                Image.asset('images/first_page.png',height: 403,width: 510,),
          ],
        ),
      ),
    );
  }
}