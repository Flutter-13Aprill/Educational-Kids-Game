import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
          
            
              
             Text("Profile", style: GoogleFonts.roboto( fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black,))


          ],),
        ),

    
      ],),
       ),

       body: SingleChildScrollView(
         child: SafeArea(
          child:
          Column(children: [
         Column(
          children: [
         
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right:180.0),
                child: Text("Nidhi Pandya", style: GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.w400,)),
              ),
             Stack(
                clipBehavior: Clip.none, 
              children: 
            
              [
               Padding(
                padding: const EdgeInsets.only(right:280.0),
                child: Text("Nidhi12", style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w400, color: Color(0x80000000))),
              ),
              Positioned(
                top: -32,
                left: 275,
                child: Image.asset("lib/assets/images/profile.png"))
             ],),
              SizedBox(height: 10,),
              Row(children: [
                SizedBox(width: 40,),
                Image.asset("lib/assets/icons/fa6-solid_clock.png"),
                 SizedBox(width: 12,),
                Text("Joined March 2022", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0x80000000)))
              ],),
              SizedBox(height: 30,),
            Container(
              width:428,
              height: 3,
              decoration: BoxDecoration(
                color: Color(0x1A000000),
                shape: BoxShape.rectangle,

              ),
            ),
            SizedBox(height: 18,),
            Container(
              width: 378,
              height: 69,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0x1A000000),
                  width: 3,
                )
              ),

              child: Row(
                children: [
                  SizedBox(width: 28,),
Image.asset("lib/assets/icons/bell.png"),
                  SizedBox(width: 16,),
Text("Friends updates", style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 20),),
SizedBox(width: 110,),
Image.asset("lib/assets/icons/arrow.png"),
                ],
              ),
            ),
            SizedBox(height: 16,),
             Text("Statisics", style: GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.w400)),
              SizedBox(height: 16,),
             Row(children: [
              SizedBox(width: 25,),
              Container(
                width: 178,
                height: 68,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border:Border.all(
                    color: Color(0x1A000000),
                    width: 3,
                  )
                ),

                child: 
                Row(
                
                  children: [
                  SizedBox(width: 16,),
                  Image.asset("lib/assets/icons/fire.png"),
                  Column( children: [
                    Padding(
                      padding: const EdgeInsets.only(right:45.0, top: 6),
                      child: Text("3", style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w400, ),),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left:8.0),
                       child: Text("Day Streak", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black38 ),),
                     ),


                  ],),
                  
                ],)


 
              ),
SizedBox(width: 20,),
                 Container(
                width: 178,
                height: 68,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border:Border.all(
                    color: Color(0x1A000000),
                    width: 3,
                  )
                ),
                child: Row(children: [
                  SizedBox(width: 16,),
                  Image.asset("lib/assets/icons/thunder.png"),
                  Column( children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 6),
                      child: Text("1432", style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w400, ),),
                    ),
                  
                  
                      Padding(
                        padding: const EdgeInsets.only(left:10.0,),
                        child: Text("Total XP", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black38 ),),
                      ),
                     


                  ],),
                  
                ],)


 
              ),

              
             ],),


                SizedBox(height: 16,),
             Row(children: [
              SizedBox(width: 25,),
              Container(
                width: 178,
                height: 68,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border:Border.all(
                    color: Color(0x1A000000),
                    width: 3,
                  )
                ),

                child: 
                Row(
                
                  children: [
                  SizedBox(width: 16,),
                  Image.asset("lib/assets/icons/noto_3rd-place-medal.png"),
                  Column( children: [
                    Padding(
                      padding: const EdgeInsets.only(right:45.0, top: 6),
                      child: Text("3", style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w400, ),),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left:8.0),
                       child: Text("Day Streak", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black38 ),),
                     ),


                  ],),
                  
                ],)


 
              ),
 SizedBox(width: 25,),
                 Container(
                width: 178,
                height: 68,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border:Border.all(
                    color: Color(0x1A000000),
                    width: 3,
                  )
                ),
                child: Row(children: [
                  SizedBox(width: 16,),
                  Image.asset("lib/assets/icons/bx_medal.png"),
                  Column( children: [

                 Padding(
                   padding: const EdgeInsets.only(top:4, right: 75),
                   child: Text("0", style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w400, ),),
                 ),
                       
                  Padding(
                    padding: const EdgeInsets.only(left:4.0),
                    child: Text("Top 3 Finishes", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black38 ),),
                  ),
                  


                  ],),
                  
                ],)


 
              ),

              
             ],)
          ],
         
         ),
         SizedBox(height: 28,),
         Row(

          children: [
           SizedBox(width: 28,),
          Text("Friends", style: GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.w400, )),
          SizedBox(width: 160,),
           Text("Add Friends", style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w600, color: Color(0XFF02A1FB) )),
         ],),
           SizedBox(height: 12,),
         Stack(children: [
          Container(
          width: 380,
          height: 156,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Color(0x1A000000),
              width: 3,
            )
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 95.0),
            child: Row(children: [
              SizedBox(width: 32),
              Text("FOLLOWING", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.w600, color: Color(0XFF02A1FB))),
               SizedBox(width: 140),
              Text("FOLLOWERS", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.w600, color: Color(0x80000000)
            )),
            ],),

          ),
         ),
         Positioned(
          top: 50,
          child: Container(
            height: 3,
            width: 377,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
            color: Color(0x1A000000),
            ),
          )),
            Positioned(
          top: 50,
          child: Container(
            height: 3,
            width: 189,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
            color: Color(0xFF02A1FB),
            ),
          )),
               Positioned(
          top: 100,
          child: Container(
            height: 3,
            width: 377,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
            color: Color(0x1A000000),
            ),
          )),
          Positioned(
            top:65,
            left: 345,
            child: Image.asset("lib/assets/icons/arrow.png")),
            Positioned(
            top:118,
            left: 345,
            child: Image.asset("lib/assets/icons/arrow.png")),
            Positioned(
            top:60,
            left: 20,
            child: Image.asset("lib/assets/images/purplefollowingprofile.png")),
               Positioned(
            top:115,
            left: 20,
            child: Image.asset("lib/assets/images/orangefolloingprofile.png")),
                   Positioned(
            top:60,
            left: 20,
            child: Image.asset("lib/assets/images/purplefollowingprofile.png")),
               Positioned(
            top:119,
            left: 29,
            child: Text("K", style: GoogleFonts.roboto(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w400 ))),
                Positioned(
            top:65,
            left: 29,
            child: Text("H", style: GoogleFonts.roboto(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w400 ))),
                       Positioned(
            top:54,
            left: 70,
            child: Text("Hardi", style: GoogleFonts.roboto(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400 ))),
                              Positioned(
            top:78,
            left: 70,
            child: Text("4367 XP", style: GoogleFonts.roboto(fontSize: 15, color: Colors.black38, fontWeight: FontWeight.w400 ))),
                       Positioned(
            top:104,
            left: 70,
            child: Text("Kristina", style: GoogleFonts.roboto(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400 ))),
                             Positioned(
            top:128,
            left: 70,
            child: Text("2334 XP", style: GoogleFonts.roboto(fontSize: 15, color: Colors.black38, fontWeight: FontWeight.w400 ))),
          
         ],),
         SizedBox(height: 26,),

        Stack(children: [
          Container(
            width: 378,
            height: 228,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Color(0x1A000000),
                width: 3,
                )
              ),
              child: Padding(
                padding: const EdgeInsets.only(right:190.0, bottom: 60),
                child: Image.asset("lib/assets/images/Dayflow Black Cat.png"),
              ),
            ),
        Positioned(
          top: 20,
        left: 150,
          child: Text("Invite your friends", style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500),) ),
                 Positioned(
          top: 65,
        left: 150,
          child: Text("Tell your friends it's\n free and fun to learn\n on Mental up!", style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500),) ),
                        Positioned(
          top: 155,
        left: 30,
          child: SizedBox(
            width: 321,
            height: 47,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF02A1FB),
                elevation: 6,
                shadowColor: Color(0x8002A1FB)
,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )
            
              ),
              child: Text("INVITE FRIENDS", style: GoogleFonts.roboto(color: Colors.white, fontWeight: FontWeight.w500),
            )),
          ),
                        )
        ],)

         ],
         )
         ),
       )
    );
  }
}