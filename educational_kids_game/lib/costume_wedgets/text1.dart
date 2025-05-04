//import packages
import 'package:flutter/material.dart';
//text1 class
class Text1 extends StatelessWidget {
  final String hinttext;
  const Text1({super.key,required this.hinttext });

  @override
  Widget build(BuildContext context) {
    //start with centar
    return Center(child:
    //container contain textfield
    Container( decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15))), child:TextField(style: TextStyle(color: Colors.grey),decoration: 
    // put hint text
    InputDecoration(hintText: hinttext, 
border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      //change border
      borderSide:BorderSide(style: BorderStyle.none)
    ),
    focusedBorder: OutlineInputBorder(
      //foucas border color
      borderSide: BorderSide(color: const Color.fromARGB(255, 243, 131, 33), width: 2.0),
    ),),) ,)
    
    
    
    
    
    );
  }
}

