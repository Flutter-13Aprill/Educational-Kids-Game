import 'package:flutter/material.dart';

class ChallengesPage extends StatefulWidget {
  const ChallengesPage({super.key});

  @override
  State<ChallengesPage> createState() => _ChallengesPageState();
}

class _ChallengesPageState extends State<ChallengesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row( 
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                      height: 60,
                      width: 426,
                      decoration: BoxDecoration(color: const Color.fromARGB(41, 118, 115, 115),border: Border.all(style: BorderStyle.none) ),
                      child: Padding(padding: EdgeInsets.fromLTRB(135, 8, 25, 8),
                      child: Text('Challenges',style: TextStyle(fontSize: 30,),),
                          ),
                          ),  
                          ]),

                  SizedBox(height: 20,),
                  //first challeng
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 120,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('images/readbook.png'),
                           Padding(
                             padding: const EdgeInsets.only(top: 15),
                             child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Complete 1000 word ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                Text('streak',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                Text('Win 1000XP along with 300 .'),
                                Text('diamonds.'),
                              ],
                             ),
                           ),
                        ],
                      ),
                    ),
                  ),
 
                    Padding(
                     padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                     child: Text('Achievements',style: TextStyle(fontSize: 30),),
                   ),
              // second card on challeng 
                   Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 120,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey)
                      ),
                      child: Row(
                       
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Image.asset('images/plant.png'),
                          ),
                          SizedBox(width: 20,),
                           Padding(
                             padding: const EdgeInsets.only(top: 15),
                             child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Text('Lorem Ipsum',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                               Text('is simply dummy text of',),
                               Text('the printing and '), 
                               Text('typesetting industry.'),
                              ],
                             ),
                           ),
                        ],
                      ),
                    ),
                  ),
                //third card on challeng 
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 120,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey)
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Image.asset('images/cactus.png'),
                          ),
                          SizedBox(width: 50,),
                           Padding(
                             padding: const EdgeInsets.only(top: 15),
                             child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Text('Lorem Ipsum',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                               Text('is simply dummy text of',),
                               Text('the printing and '), 
                               Text('typesetting industry.'),
                              ],
                             ),
                           ),
                        ],
                      ),
                    ),
                  ),
                 //fourth card on challenge 
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      height: 120,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey)
                      ),
                      child: Row(
                        children: [
                          Image.asset('images/Basketball.png'),
                          SizedBox(width: 18,),
                           Padding(
                             padding: const EdgeInsets.only(top: 15),
                             child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Text('Lorem Ipsum',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                               Text('is simply dummy text of',),
                               Text('the printing and '), 
                               Text('typesetting industry.'),
                              ],
                             ),
                           ),
                        ],
                      ),
                    ),
                  ), 
        ],
      ),
    );
  }
}