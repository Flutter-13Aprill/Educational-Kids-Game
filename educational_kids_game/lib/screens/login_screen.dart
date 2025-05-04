//import packages & custome_wedget & home screen
import 'package:flutter/material.dart';
import 'package:educational_kids_game/screens/home_screen.dart';
import 'package:educational_kids_game/costume_wedgets/text1.dart';
//main class
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    //get the size of screen
    double screenWidth=MediaQuery.sizeOf(context).width;
    double screenHeight=MediaQuery.sizeOf(context).height;
    //get used size
    double usedHeight =
          screenHeight * 0.05 + 
          screenHeight * 0.10 + 
          screenHeight * 0.05 + 
          screenHeight * 0.05 + 
          screenHeight * 0.05 + 
          screenHeight * 0.05 + 
          screenHeight * 0.06 + 
          screenHeight * 0.05 + 
          screenHeight * 0.05 + 
          20; 
    return MaterialApp(
    home: Scaffold(backgroundColor: Color.fromARGB(255, 251, 245, 242),
// starting with safe area
body: SafeArea(
  top: true,
  bottom: false,
  //main column
  child: Column(
    children: [
      //make the colmun take long size as posable
     Expanded(
  child: 
  //starting of design ui
      Column(
          
          children: [
            //make space between safearea and logo
            SizedBox(height: screenHeight * 0.03),
            //make horzental space between the content and the safearea
             Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth / 8),
        child:Center(
          // logo image
              child: Image.asset(
                'assets/images/logo.png',
                width: screenWidth / 1.5,
                height: screenHeight * 0.10,
              ),
            ),),
            SizedBox(height: screenHeight * 0.02),
            //make horzental space between the content and the safearea
            Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth / 8),
        //custom wedget for textfield
        child: Text1(hinttext: 'Username'),),
            SizedBox(height: screenHeight * 0.01),
            //make horzental space between the content and the safearea
           Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth / 8),
        //custom wedget for textfield
        child:  Text1(hinttext: 'Password'),),
            SizedBox(height: screenHeight * 0.01),
            //make horzental space between the content and the safearea
           Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth / 8),
        //row for Forget password
        child:  Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //forget password statement
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forget Password ?',
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),),
            //make space
            SizedBox(height: screenHeight * 0.02),
            //make horzental space between the content and the safearea
             Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth / 8),
        //the button Go
        child:InkWell(
              onTap: () {
                //push to home screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              //container represnt the button go
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.06,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 235, 159, 74),
                  borderRadius: BorderRadius.circular(15),
                ),
                //centering the text Go
                child: Center(
                  child: Text(
                    'GO',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),),
            //make space
            SizedBox(height: screenHeight * 0.01),
            //make horzental space between the content and the safearea
            Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth / 8),
        //row for the statment don't have account yet?
        child:Row(
              children: [
                Text("Don't have account yet ?  ",style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.black),),
                //sign up button with deffrant color
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color.fromARGB(255, 133, 189, 141),
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ))
            // push the elmant using spacer
            ,Spacer(),
            //background image
           Image.asset(
          'assets/images/login2.png',
          width: screenWidth ,
          height:screenHeight- usedHeight,
          fit: BoxFit.fitWidth,
          alignment: Alignment.bottomCenter,
        ),],
        ),
      

     ),
    
      
    ],
  ),
),

      

  ));
  }
}
