import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mental_app/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
 return ScreenUtilInit(
  designSize: const Size(428, 926),
  minTextAdapt: true,
  splitScreenMode: true,
  builder: (context, child) {
     return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  },
  
 );
  }
}

 

   

//COLORS:
//BACKGROUND COLOR: 0XFFFBF5F2
//BUTTONS COLOR: 0XFFEB9F4A
//COLOR OF BAR: 0XFFECC055
//COLOR OF CIRCLE: 0XFF72BFC7
//COLOR OF CIRCLE BORDER: 0XFFC4C4C4
//COLOR OF ADD FRIEND: 0XFF02A1FB

//formula for media query 
