//import packages
import 'package:flutter/material.dart';
//unit class
class Unit extends StatelessWidget {
  final String title;
  final String unit;
  final int starting;
  final int ending;
//the keys of class
  const Unit({
    super.key,
    required this.title,
    required this.unit,
    required this.starting,
    required this.ending,
  });

  @override
  Widget build(BuildContext context) {
    //get wedth and height for screen
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return MaterialApp(
      home: Scaffold(
        //start with safeare
        body: SafeArea(
          child: ListView(
            children: [
              //containar like appbar
              Container(
                color: Colors.blueGrey,
                width: screenWidth,
                height: screenHeight * 0.06,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.04),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: (screenHeight * screenWidth * 0.00007),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.04),
                      child: Text(
                        '🌟',
                        style: TextStyle(
                          fontSize: (screenHeight * screenWidth * 0.00007),
                        ),
                      ),
                    ),
                    Text(' ${ending.toString()}'),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.04),
                      child: Text(
                        '💎',
                        style: TextStyle(
                          fontSize: (screenHeight * screenWidth * 0.00007),
                        ),
                      ),
                    ),
                    Text('215'),
                  ],
                ),
              ),
//make space
              SizedBox(height: screenHeight * 0.04),

              //the card of unit
              Center(
                child: SizedBox(
                  width: screenWidth * 0.6,
                  height: screenHeight * 0.25,
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      //blue  container
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.blueGrey),
                        ),
                        height: screenHeight * 0.13,
                        width: screenWidth * 0.5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: screenHeight * 0.06),
                            //unit name
                            Text(
                              unit,
                              style: const TextStyle(color: Colors.white),
                            ),
                            //make space
                            const Spacer(),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                              child: Row(
                                children: [
                                  Expanded(
                                    //lineir progress indicator
                                    child: LinearProgressIndicator(
                                      value: starting / ending,
                                      backgroundColor: Colors.yellow[200],
                                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.orange),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  // progress 
                                  Text('$starting/$ending'),
                                ],
                              ),
                            ),
                            SizedBox(height: 4),
                          ],
                        ),
                      ),

                      //hourse image above container
                      Positioned(
                        top: -12,
                        right: 0,
                        left: 0,
                        child: Image.asset(
                          'assets/images/hourse.png',
                          height: screenHeight*0.1,
                        ),
                      ),

                      //icon in the bottom of container
                      Positioned(
                        bottom: screenHeight*0.065,
                        left: screenWidth*0.07,
                        child: Text('🌟', style: TextStyle(fontSize: 24)),
                      ),
                    ],
                  ),
                ),
              ),

              // main circal container
              Container(width: 100,height: 100 ,decoration: BoxDecoration(shape:BoxShape.circle,color: Colors.grey),child:Center(child: Stack(clipBehavior: Clip.none, children: [
                //smaller circal container
                Container(width: 90,height:90,decoration: BoxDecoration(shape:BoxShape.circle,color: const Color.fromARGB(255, 37, 83, 184),border: Border.all(color: Colors.white,width: 3)),child: 
                //image in the container
                Image.asset('assets/images/pen.png',width: screenWidth*0.08,height: screenWidth*0.08)),
                //icon in the container
                Positioned(bottom: -2,right: -2,child: Text('🌟',style: TextStyle(fontSize: screenWidth*0.06),))] ,) ,),)
                //text down the container
              ,Center(child: Text('intro'),),
              Row(children: [
              Expanded(child:
            
              Column(children: [
                // main circal container
                Container(width: 100,height: 100 ,decoration: BoxDecoration(shape:BoxShape.circle,color: Colors.grey),child:
              Center(child: 
              Stack(clipBehavior: Clip.none, children: [
                //smaller circal container
              Container(width: 90,height:90,decoration: BoxDecoration(shape:BoxShape.circle,color: const Color.fromARGB(255, 37, 83, 184),border: Border.all(color: Colors.white,width: 3)),child: 
              //image in the container
              Image.asset('assets/images/Book.png',width: screenWidth*0.08,height: screenWidth*0.08)),
              //icon in the container
              Positioned(bottom: -2,right: -2,child: Text('🌟',style: TextStyle(fontSize: screenWidth*0.06),))] ,) ,),)
              //text down the container
              ,Center(child: Text('Phrases'))],)
               ),
              Expanded(child:
              Column(children: [
                // main circal container
                Container(width: 100,height: 100 ,decoration: BoxDecoration(shape:BoxShape.circle,color: Colors.grey),child:
              Center(child: 
              Stack(clipBehavior: Clip.none, children: [
                //smaller circal container
              Container(width: 90,height:90,decoration: BoxDecoration(shape:BoxShape.circle,color: const Color.fromARGB(255, 37, 83, 184),border: Border.all(color: Colors.white,width: 3)),child: 
              //image in the container
              Image.asset('assets/images/Bike.png',width: screenWidth*0.08,height: screenWidth*0.08)),
              //icon in the container
              Positioned(bottom: -2,right: -2,child: Text('🌟',style: TextStyle(fontSize: screenWidth*0.06),))] ,) ,),)
              //text down the container
              ,Center(child: Text('Travel'),)],)
               )],),
               Container(width: 100,height: 100 ,decoration: BoxDecoration(shape:BoxShape.circle,color: Colors.grey),child:Center(child: Stack(clipBehavior: Clip.none, children: [Container(width: 90,height:90,decoration: BoxDecoration(shape:BoxShape.circle,color: const Color.fromARGB(255, 37, 83, 184),border: Border.all(color: Colors.white,width: 3)),child: Image.asset('assets/images/Lock.png',width: screenWidth*0.08,height: screenWidth*0.08)),] ,) ,),)
              ,
              //locked units
              Row(children: [
              Expanded(child:
              Column(children: [Container(width: 100,height: 100 ,decoration: BoxDecoration(shape:BoxShape.circle,color: Colors.grey),child:
              Center(child: 
              Stack(clipBehavior: Clip.none, children: [
              Container(width: 90,height:90,decoration: BoxDecoration(shape:BoxShape.circle,color: const Color.fromARGB(255, 37, 83, 184),border: Border.all(color: Colors.white,width: 3)),child: 
              Image.asset('assets/images/Lock.png',width: screenWidth*0.08,height: screenWidth*0.08)),] ,) ,),)
              ,],)
               ),
              Expanded(child:
              Column(children: [Container(width: 100,height: 100 ,decoration: BoxDecoration(shape:BoxShape.circle,color: Colors.grey),child:
              Center(child: 
              Stack(clipBehavior: Clip.none, children: [
              Container(width: 90,height:90,decoration: BoxDecoration(shape:BoxShape.circle,color: const Color.fromARGB(255, 37, 83, 184),border: Border.all(color: Colors.white,width: 3)),child: 
              Image.asset('assets/images/Lock.png',width: screenWidth*0.08,height: screenWidth*0.08)),] ,) ,),)
              ,],)
               )],)
            ],
          ),
        ),
      ),
    );
  }
}
