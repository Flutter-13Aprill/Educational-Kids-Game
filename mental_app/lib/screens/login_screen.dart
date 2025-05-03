import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:mental_app/screens/nav_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFBF5F2),
       body: SafeArea(
     bottom: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
       
 

            Padding(
              padding: const EdgeInsets.only(top: 52),
              child: SizedBox(
                width: 288.w,
                height: 55.h,
                child: Image.asset("lib/assets/images/MENTAL_up.png")),
            ),
           


            
            //textfield UserName
           Padding(
             padding: const EdgeInsets.only(left: 52, right:52),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              
                
                 TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle:  GoogleFonts.roboto(
                       color: Color(0x66000000),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                     borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                     ),
                     ),
                  )
                   
                    ),
              
                   
                    SizedBox(height: 24.h ),
                
              //textfield PassWord
                       
                  
                     TextField(
                                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle:  GoogleFonts.roboto(
                       color: Color(0x66000000),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                     borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                     ),
                     ),
                                  )
                                   
                    ),
                  
             ],),
           ),
    
          
            //text forgot password
          Padding(
            padding: const EdgeInsets.only(right:52),
            child: Align(
              alignment: AlignmentDirectional.topEnd,
              child: Text("Forgot Password?", style: GoogleFonts.roboto( fontSize: 18.sp, fontWeight: FontWeight.w700, color: Colors.black, ) )),
          ),
  
            //button
          
         
                
                        SizedBox(
                          width: 316,
                          height:   58,
                          child: ElevatedButton(
                            onPressed: (){
                                    Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (_) => NavBar()),
                          );
                          
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFFEB9F4A),
                            
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                elevation: 0,
                              ),
                                          child:  Text("Go", style: GoogleFonts.roboto( fontSize: 24.sp, fontWeight: FontWeight.w700, color: Colors.white, ), ),
                            ),
                        ),
                   
              
          
  
          
            //text dont have account yet?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account yet?", style: GoogleFonts.roboto( fontSize: 18.sp, fontWeight: FontWeight.w700, color: Colors.black, ), ),
                Text("Sign Up", style: GoogleFonts.roboto( fontSize: 18.sp, fontWeight: FontWeight.w700, color: Color(0xFF84B2A8), ), ),
              ],
            ),
              
      
            SizedBox(
              width: 428.w,
              height: 368.w,
              child: Image.asset("lib/assets/images/riding.png")),
          
          
          
              
          
          ],
                ),
        
       )
    );
  }
}