import 'package:flutter/material.dart';
 //use this for drow the circle in verbal page 
class Circle extends StatefulWidget {
  const Circle({super.key});

  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(color: const Color.fromARGB(255, 206, 205, 205),borderRadius: BorderRadius.circular(100)),
            alignment: Alignment.center,
            child:  Container(
              height:90 ,
              width: 90,
              decoration: BoxDecoration(color: const Color.fromARGB(255, 177, 208, 212), borderRadius: BorderRadius.circular(100),border:Border.all(width: 4, color: Colors.white)),
            ),
          ),
        ],
      )
      );
  }
}