import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: PreferredSize(
      preferredSize: Size.fromHeight(120), 
      child: Column(
        children: [
        Container(
          height: 75,
          color: Colors.white,
        ),
 
    Container(
          height: 71,
          color: Color(0xCCE5E5E5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
            
              
             Text("Challenges", style: GoogleFonts.roboto( fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black,))


          ],),
        ),

    
      ],),
       ),
       body: Center(
         child: Column(children: [
          Container(
            width: 378,
            height: 116,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Color(0x1A000000)
         ,             
                width: 3,
              )
            ),
            child:Row(children: [
              SizedBox(width: 12,),
              Image.asset("lib/assets/images/GirlReadingBook.png"),
              SizedBox(width: 12,),
              Column(children: [
         
                Text("Complete 1000 word\n streak", style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w400),),
                Text("Win 1000XP along with 300\n diamons", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.w400)),
              ],)
            ],)
          ),
          SizedBox(height: 22 ,),
          Padding(
            padding: const EdgeInsets.only(right:170.0),
            child: Text("Achievements", style: GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.w400),),
          ),
           SizedBox(height: 22 ,),
           Container(
            width: 378,
            height: 116,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Color(0x1A000000)
         ,             
                width: 3,
              )
            ),
            child:Row(children: [
            
              Image.asset("lib/assets/images/Stuck at Home Vertical Painting 1.png"),
           
              Column(children: [
         
                Padding(
                  padding: const EdgeInsets.only(right:60.0, top:5),
                  child: Text("Lorem Ipsum", style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w400),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:20.0),
                  child: Text("is simply dummy text of\n the printing and\n typingsetting industry", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.w400)),
                ),
              ],)
            ],)
          ),
         
             SizedBox(height: 22 ,),
           Container(
            width: 378,
            height: 116,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Color(0x1A000000)
         ,             
                width: 3,
              )
            ),
            child:Row(children: [
            
              Image.asset("lib/assets/images/Pebble People Basketball.png"),
           
              Column(children: [
         
                Padding(
                  padding: const EdgeInsets.only(right:60.0, top:5),
                  child: Text("Lorem Ipsum", style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w400),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:20.0),
                  child: Text("is simply dummy text of\n the printing and\n typingsetting industry", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.w400)),
                ),
              ],)
            ],)
          ),
              SizedBox(height: 22 ,),
           Container(
            width: 378,
            height: 116,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Color(0x1A000000)
         ,             
                width: 3,
              )
            ),
            child:Row(children: [
            
              Image.asset("lib/assets/images/Pebble People Plant 2.png"),
           
              Column(children: [
         
                Padding(
                  padding: const EdgeInsets.only(right:60.0, top:5),
                  child: Text("Lorem Ipsum", style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w400),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:20.0),
                  child: Text("is simply dummy text of\n the printing and\n typingsetting industry", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.w400)),
                ),
              ],)
            ],)
          ),
         
         ],),
       ),
    );
  }
}