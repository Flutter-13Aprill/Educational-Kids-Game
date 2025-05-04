import 'package:flutter/material.dart';
import 'package:game_app_development/widget/circle.dart';
//import 'package:game_app_development/widget/croenwithnum.dart';
//import 'package:game_app_development/widget/level.dart';

class VerbalSkillsPage extends StatefulWidget {
  const VerbalSkillsPage({super.key});

  @override
  State<VerbalSkillsPage> createState() => _VerbalSkillsPageState();
}

class _VerbalSkillsPageState extends State<VerbalSkillsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                      height: 60,
                      width: 426,
                      decoration: BoxDecoration(color: Colors.grey[300],border: Border.all(style: BorderStyle.none) ),
                      child: Padding(padding: EdgeInsets.fromLTRB(25, 8, 25, 8),
                      child:Row(
                      children: [
                        SizedBox(width: 15,),
                      Text('Verbal skills',style: TextStyle(fontSize: 30,),),
                      SizedBox(width: 25,),
                      Image.asset("icons/crown.png",height: 30,width: 50,),
                      Text('3',style: TextStyle(color: const Color.fromARGB(255, 199, 156, 29)),),
                      Image.asset("icons/jewel.png",height: 30,width: 50,),
                      Text('213',style: TextStyle(color: const Color.fromARGB(255, 31, 145, 194))),
                          ]))),
                        ],
                      ),
                  SizedBox(height: 50,),
                  Stack(
                    clipBehavior: Clip.none,
                    children:[ 
                      Container(
                      height: 120,
                      width: 210,
                      decoration: BoxDecoration( color: Colors.grey[300],borderRadius: BorderRadius.circular(12),border: Border.all(width: 3, color: Colors.grey)),
                      alignment: Alignment.center,
                      child: Text('Unit 1',style: TextStyle(fontSize: 20),),
                    ),
                    Positioned(
                      top: -50,
                      right: 50,
                      child:  Image.asset("images/horse.png", height:100,width: 100,),
                      ),
                    
                   Positioned(
                    bottom: 10,
                    right: 30,
                     child: Row(
                       children: [
                        Image.asset('icons/crown.png',height: 25,width: 25,alignment: Alignment.topRight,),
          
                  Stack(
                           children:[
                             Container(
                            width: 80,
                            height: 12,
                            decoration: BoxDecoration(
                            color: const Color.fromARGB(75, 138, 136, 136), 
                            borderRadius: BorderRadius.circular(8),
                                ),
                                     ),
                         
                                         Container(
                                         width: 20,
                                         height: 12,
                                         decoration: BoxDecoration(
                                         color: const Color.fromARGB(255, 242, 191, 21), 
                                         borderRadius: BorderRadius.circular(8),
                            ),
                                   ),
                                         ]),
                                       SizedBox(width: 20,) ,
                                        Text('3/40'),
                      ],
                       
                     ),
                   ),
                     
               ] ),
            
          SizedBox(height: 50,),
//drwo circle one
             SizedBox(
               width: 120,
              height: 120,
             child: InkWell(
              onTap: (){},
               child: Stack(
                children: [
                  Circle(),
                  Positioned(
                    left: 28,
                    bottom: 37,
                    child: Image.asset('images/pen.png',height: 60,width: 60,),
                  ),
                    
               Positioned(
                top:60 ,
                left:88,
                 child: Stack(
                  children: [
                   Image.asset('icons/crown.png'),
               Positioned(
                    top: 10,
                    right: 11,
                    child: Text('1'))
                 ],
                         ),
               ),
               
               
               ],
                         ),
             ),
             ),
           Text('intro'),
//drwo circels two row
           Padding (
              padding:EdgeInsets.fromLTRB(30, 1, 30, 1),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                     width: 120,
                     height: 120,
                     child: InkWell(
                      onTap: (){},
                       child: Stack(
                         children: [
                           Circle(),
                           Positioned(
                            left: 28,
                            bottom: 40,
                              child: Image.asset('images/book.png',height: 60,width: 60,),
                                           ),
                        
                            Positioned(
                              top:60 ,
                              left:88,
                              child: Stack(
                              children: [
                                Image.asset('icons/crown.png'),
                                     Positioned(
                                         top: 10,
                                         right: 11,
                                          child: Text('1'))
                                      ],),
                                       ),
                                      ],),
                     ),
           ),
                   Text('Phrases'),
                  ],
                ),

          SizedBox(width: 20,),

    Column(
    mainAxisSize: MainAxisSize.min,
    children: [
     SizedBox(
      width: 120,
      height: 120,
      child: InkWell(
        onTap: (){},
        child: Stack(
            children: [
                Circle(),                  
                Positioned(
                left: 28,
                bottom: 40,
                child: Image.asset('images/bicycle.png',height: 60,width: 60,),
                           ),
                Positioned(
                top:60 ,
                left:88,
                child: Stack(
                  children: [
                  Image.asset('icons/crown.png'),
                  Positioned(
                  top: 10,
                  right: 11,
                  child: Text('1'))
                   ],),
                 ),               
              ], ),
      ),      
              ),                    
               Text('Travel'),
                    ],
                  ),],
               ),
             ),
             
             
             //drow cercle three 

             SizedBox(
               width: 120,
              height: 110,
             child: Stack(
              children: [
                Circle(),
                Positioned(
                  left: 30,
                  bottom: 37,
                  child: Image.asset('icons/lock.png',height: 50,width: 50,),
                ),
                  
             Positioned(
              top:60 ,
              left:88,
               child: Stack(
                children: [
                 Image.asset('icons/crown.png'),
             Positioned(
                  top: 10,
                  right: 11,
                  child: Text('1'))
               ],
          ),
             ),

             
             ],
                       ),
             ),
//drow circle four row 

 Padding (
              padding:EdgeInsets.fromLTRB(30, 1, 30, 1),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                SizedBox(
                 width: 120,
                height: 150,
               child: Stack(
              children: [
                Circle(),
                Positioned(
                  left: 32,
                  bottom: 70,
                  child: Image.asset('icons/lock.png',height: 50,width: 50,),
                ),
                  
             Positioned(
              top:60 ,
              left:88,
               child: Stack(
                children: [
                 Image.asset('icons/crown.png'),
             Positioned(
                  top: 10,
                  right: 11,
                  child: Text('1'))
               ],
          ),
             ),

             
             ],
                       ),
               ),

               SizedBox(width: 20,),

                  SizedBox(
                 width: 120,
                height: 150,
               child: Stack(
              children: [
                Circle(),
                Positioned(
                  left: 32,
                  bottom: 70,
                  child: Image.asset('icons/lock.png',height: 50,width: 50,),
                ),
                  
             Positioned(
              top:60 ,
              left:88,
               child: Stack(
                children: [
                 Image.asset('icons/crown.png'),
             Positioned(
                  top: 10,
                  right: 11,
                  child: Text('1'))
               ],
          ),
             ),  
             ],),
               ),
                ],),
             ),

              ],),
          ),
      
      
    ) ;
  }
}