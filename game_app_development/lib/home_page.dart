import 'package:flutter/material.dart';
import 'package:game_app_development/verbal_skills_page.dart';
//import 'package:game_app_development/widget/cardUnit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Padding(
        padding: EdgeInsets.only(top: 10),
        child:ListView(
        children: [
          Row(   
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                height: 60,
                width: 426,
                decoration: BoxDecoration(color:const Color.fromARGB(41, 118, 115, 115),border: Border.all(style: BorderStyle.none) ),
                child: Padding(padding: EdgeInsets.fromLTRB(25, 8, 25, 8),
                child:Row(
                  children: [
                    SizedBox(width: 30,),
                    Image.asset('icons/fire.png',height: 30,width: 30,),
                    SizedBox(width: 6,),
                    Text('3',style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 201, 129, 19),),),
                    SizedBox(width: 70,),
                    Image.asset("icons/box.png",height: 30,width: 30,),
                    SizedBox(width: 5,),
                    Text('1433XP',style: TextStyle(fontSize: 16,color: const Color.fromARGB(255, 15, 132, 112),)),
                    SizedBox(width: 30,),
                    Image.asset("icons/heart.png",height: 30,width: 30,),
                    SizedBox(width: 10,),
                   Image.asset("icons/inf.png",height: 30,width: 30,),
                   SizedBox(width: 20,),
                          ]))),
                        ],
                      ),

                     SizedBox(height: 30,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       Text('Logical reasoning',style: TextStyle(fontSize: 33),),
                       Row(
                        children: [
                       Image.asset('icons/crown.png',height:30,width: 30,),
                       Text('18/40',style: TextStyle(fontSize:20),),])
                      ],
                    ),
                     SizedBox(height: 5,),
                   Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Stack(
                            children: [
                               InkWell(
                                onTap: (){},
                                 child: Container(
                                  height: 210,
                                  width: 170,
                                  decoration: BoxDecoration(color:const Color.fromARGB(41, 118, 115, 115),borderRadius: BorderRadius.circular(12)),),
                               ),
                               Positioned(
                                  left: 60,
                                  top: 13,
                                  child: Text('Unit 1',style: TextStyle(fontSize: 25),),
                                ),
                                 Positioned(
                                bottom: 12,
                                left: 12,
                                child: Row(
                                  children: [
                                    Image.asset('icons/crown.png',height: 25,width: 25,alignment: Alignment.topCenter,),
                                    Stack(
                                      children:[
                                       Container(
                                          width: 120,
                                          height: 12,
                                         decoration: BoxDecoration(
                                         color: const Color.fromARGB(75, 138, 136, 136), 
                                         borderRadius: BorderRadius.circular(8),
                                                        ),
                                              ),
                                         Container(
                                          width: 50,
                                          height: 12,
                                          decoration: BoxDecoration(
                                          color: const Color.fromARGB(255, 242, 191, 21), 
                                          borderRadius: BorderRadius.circular(8),
                                                        ),
                                              ),
                                              ]
                                            ),  
                                  ],
                                ),
                              ),
                            ],),

                          Stack(
                            children: [
                              InkWell(
                                onTap: (){

                                },
                                child: Stack(
                                  alignment: Alignment.center,
                                  children:[ Container(
                                    height: 210,
                                    width: 170,
                                    decoration: BoxDecoration(color:const Color.fromARGB(41, 118, 115, 115),borderRadius: BorderRadius.circular(12)),
                                    ),
                                    Image.asset('icons/lock.png',)
                             ] ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       Text('Artistic thinking',style: TextStyle(fontSize: 33),),
                       Row(
                        children: [
                       Image.asset('icons/crown.png',height:30,width: 30,),
                       Text('35/40',style: TextStyle(fontSize:20),),])
                      ],
                    ),

                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  height: 210,
                                  width: 170,
                                  decoration: BoxDecoration(color:const Color.fromARGB(41, 118, 115, 115),borderRadius: BorderRadius.circular(12)),
                                  ),
                              ),
                                Positioned(
                                  left: 60,
                                  top: 13,
                                  child: Text('Unit 1',style: TextStyle(fontSize: 25),),
                                ),
                                 
                              Positioned(
                                bottom: 12,
                                left: 12,
                                child: Row(
                                  children: [
                                    Image.asset('icons/crown.png',height: 25,width: 25,alignment: Alignment.topCenter,),
                                    Stack(
                                      children:[
                                       Container(
                                          width: 120,
                                          height: 12,
                                         decoration: BoxDecoration(
                                         color: const Color.fromARGB(75, 138, 136, 136), 
                                         borderRadius: BorderRadius.circular(8),
                                                        ),
                                              ),
                                         Container(
                                          width: 100,
                                          height: 12,
                                          decoration: BoxDecoration(
                                          color: const Color.fromARGB(255, 242, 191, 21), 
                                          borderRadius: BorderRadius.circular(8),
                                                        ),
                                              ),
                                              ]), 
                                  ],
                                ),
                              ),

                            ], ),



                          Stack(
                            children: [
                              InkWell(
                                onTap: (){},
                                child: Stack(
                                  alignment: Alignment.center,
                                  children:[ Container(
                                    height: 210,
                                    width: 170,
                                    decoration: BoxDecoration(color:const Color.fromARGB(41, 118, 115, 115),borderRadius: BorderRadius.circular(12)),
                                    ),
                                    Image.asset('icons/lock.png',)
                             ] ),
                              ),
                            ],
                          ),

                          ])
                            ,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       Text('Verbal skills',style: TextStyle(fontSize: 33),),
                       SizedBox(width: 12,),
                       Row(
                        children: [
                       Image.asset('icons/crown.png',height:40,width: 40,),
                       Text('3/40',style: TextStyle(fontSize:20),),])
                      ],
                    ),

                     Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Stack(
                            children: [
                              InkWell(
                               onTap:(){ // When the user taps this container, they will be navigated to the Verbal Skills page
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>VerbalSkillsPage()));
                               } ,
                                child: Container(
                                  height: 210,
                                  width: 170,
                                  decoration: BoxDecoration(color:const Color.fromARGB(41, 118, 115, 115),borderRadius: BorderRadius.circular(12)),),
                              ),
                              Positioned(
                                  left: 60,
                                  top: 13,
                                  child: Text('Unit 1',style: TextStyle(fontSize: 25),),
                                ),
                                 Positioned(
                                bottom: 12,
                                left: 12,
                                child: Row(
                                  children: [
                                    Image.asset('icons/crown.png',height: 25,width: 25,alignment: Alignment.topCenter,),
                                    Stack(
                                      children:[
                                       Container(
                                          width: 120,
                                          height: 12,
                                         decoration: BoxDecoration(
                                         color: const Color.fromARGB(75, 138, 136, 136), 
                                         borderRadius: BorderRadius.circular(8),
                                                        ),
                                              ),
                                         Container(
                                          width: 30,
                                          height: 12,
                                          decoration: BoxDecoration(
                                          color: const Color.fromARGB(255, 242, 191, 21), 
                                          borderRadius: BorderRadius.circular(8),
                                                        ),
                                              ),
                                              ]
                                            ),  
                                  ],
                                ),
                              ),
                            ],),
                              Stack(
                            children: [
                              InkWell(
                                onTap: (){
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (context)=>VerbalSkillsPage()));
                                },
                                child: Stack(
                                  alignment: Alignment.center,
                                  children:[ Container(
                                    height: 210,
                                    width: 170,
                                    decoration: BoxDecoration(color:const Color.fromARGB(41, 118, 115, 115),borderRadius: BorderRadius.circular(12)),
                                    ),
                                    Image.asset('icons/lock.png',)
                             ] ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
        ],),//close the page 
        ) ,
    );
  }
}