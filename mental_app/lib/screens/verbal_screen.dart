import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_app/screens/home_screen.dart';

class VerbalScreen extends StatelessWidget {
  const VerbalScreen({super.key});

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
 
    InkWell(
      onTap: () {
                  Navigator.pop(
                            context,
                            MaterialPageRoute(builder: (_) => HomeScreen())); 
      },
      child: Container(
            height: 71,
            color: Color(0xCCE5E5E5),
            child: Row(children: [
              SizedBox(width: 57),
               Text("Verbal skills", style: GoogleFonts.roboto( fontSize: 30, fontWeight: FontWeight.w400, color: Color(0xE5000000),)),
                SizedBox(width: 18),
              Image.asset("lib/assets/icons/crown.png"),
              SizedBox(width: 10),
              Text("3", style: GoogleFonts.roboto( fontSize: 25, fontWeight: FontWeight.w400, color: Color(0xFFEB9F4A),)),
               SizedBox(width: 10),
                    Image.asset("lib/assets/icons/diamond.png"),
              SizedBox(width: 10),
              Text("213", style: GoogleFonts.roboto( fontSize: 25, fontWeight: FontWeight.w400, color: Color(0xFF02A1FB),)),
      
            ],),
          ),
    ),

    
      ],),
       ),
       body: SingleChildScrollView(
         child: Column(children: [
          SizedBox(height: 72),
          Center(
            child: SizedBox(
              height: 190,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                Container(
                  width: 211,
                  height: 128,
                  decoration: BoxDecoration(
                    color: Color(0XFFE9E8E8),
                    border: Border.all(
                      color: Color(0x33000000),
                      width: 3,
              
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
              
                  child: Padding(
                    padding: const EdgeInsets.only(top: 56, left:78),
                    child: Text("Unit 1", style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black)),
                  )
                ),
                   Positioned(
            top:89,
            left: 24,
            child: Container(
                    width:31,
                    height:27,
                    child:  Image.asset('lib/assets/icons/crown.png',),
                  ),
                    ),
                  Positioned(
                    top: 100,
                    left: 48,
                    child: Container(
                  width:101,
                  height: 14,
                  decoration: BoxDecoration(
                    color: Color(0XFFC4C4C4),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  ),
            ),
                    Positioned(
                    top: 100,
                    left: 48,
                    child: 
            Container(
              width: 34,
              height: 14,
              decoration: BoxDecoration(
                color: Color(0XFFECC055),
                borderRadius: BorderRadius.circular(30),
              ),
            ),),
            Positioned(
              top: 96,
              left: 160,
              child:
            Text("3/40", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0x80000000)
 )),
            ),
            Positioned(
              
              top: -50,
              left: 38,
              child:
            Image.asset("lib/assets/images/Beep Beep Horse.png"),
            )
              ],),
            ),
          ),
          Column(children: [
            Stack(
              clipBehavior: Clip.none,
              children:
             [
           Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF72BFC7),
            ),
            child: Image.asset("lib/assets/images/Hands Pencil 1.png"),
           ),
           Positioned(
            top: -15,
            left: -15,
            
            child:  Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xFFC4C4C4),
                width: 10,
              ),
              color: Colors.transparent,
            ),)
           ),
           Positioned(
            top:75,
            left: 100,
            child: 
            SizedBox(
              width: 31,
              height: 27,
              child: Image.asset("lib/assets/icons/crown.png"))
           ),
           Positioned(
            top:82,
            left: 110,
            child: Text("1", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black)))
            ],),
            SizedBox(height:25 ,),
            Text("Intro", style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w400, ), ),
            SizedBox(height: 25,),

            Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Stack(
              clipBehavior: Clip.none,
              children:
             [
           Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF72BFC7),
            ),
            child: Image.asset("lib/assets/images/Hands Book.png"),
           ),
           Positioned(
            top: -15,
            left: -15,
            
            child:  Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xFFC4C4C4),
                width: 10,
              ),
              color: Colors.transparent,
            ),)
           ),
           Positioned(
            top:75,
            left: 100,
            child: 
            SizedBox(
              width: 31,
              height: 27,
              child: Image.asset("lib/assets/icons/crown.png"))
           ),
           Positioned(
            top:82,
            left: 110,
            child: Text("1", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black)))
            ],),

               SizedBox(
                 child: Stack(
                               clipBehavior: Clip.none,
                               children:
                              [
                            Container(
                             width: 110,
                             height: 110,
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               color: Color(0xFF72BFC7),
                             ),
                             child: Image.asset("lib/assets/images/Dayflow Bike.png"),
                            ),
                            Positioned(
                             top: -15,
                             left: -15,
                             child:  Container(
                             width: 140,
                             height: 140,
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               border: Border.all(
                  color: Color(0xFFC4C4C4),
                  width: 10,
                               ),
                               color: Colors.transparent,
                             ),)
                            ),
                            Positioned(
                             top:75,
                             left: 100,
                             child: 
                             SizedBox(
                               width: 31,
                               height: 27,
                               child: Image.asset("lib/assets/icons/crown.png"))
                            ),
                            Positioned(
                             top:82,
                             left: 110,
                             child: Text("1", style: GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black)))
                             ],),
               ),

            ],),
            SizedBox(height: 28,),
            Row(
            
              children: [
          
            SizedBox(width: 82),

              Text("Phrases", style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w400, ), ),
             SizedBox(width: 120),

             Text("Travel", style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w400, ), ),
            
           
            ],),
             SizedBox(height: 28,),
        Stack(
         clipBehavior: Clip.none,
        children: [
            SizedBox(
              child: Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF72BFC7),
              ),
              child: Image.asset("lib/assets/icons/lock.png"),
                         ),
            ),
           Positioned(
            top: -15,
            left: -15,
            
            child:  Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xFFC4C4C4),
                width: 10,
              ),
              color: Colors.transparent,
            ),)
           ),
           Positioned(
            top:70,
            left: 100,
            child: 
            SizedBox(
              width: 31,
              height: 27,
              child: Image.asset("lib/assets/icons/crown.png"))
           ),
],),
          ],),
SizedBox(height: 54),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Stack(
         clipBehavior: Clip.none,
        children: [
            SizedBox(
              child: Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF72BFC7),
              ),
              child: Image.asset("lib/assets/icons/lock.png"),
                         ),
            ),
           Positioned(
            top: -15,
            left: -15,
            
            child:  Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xFFC4C4C4),
                width: 10,
              ),
              color: Colors.transparent,
            ),)
           ),
           Positioned(
            top:70,
            left: 100,
            child: 
            SizedBox(
              width: 31,
              height: 27,
              child: Image.asset("lib/assets/icons/crown.png"))
           ),
],),

 Stack(
         clipBehavior: Clip.none,
        children: [
            SizedBox(
              child: Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF72BFC7),
              ),
              child: Image.asset("lib/assets/icons/lock.png"),
                         ),
            ),
           Positioned(
            top: -15,
            left: -15,
            
            child:  Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xFFC4C4C4),
                width: 10,
              ),
              color: Colors.transparent,
            ),)
           ),
           Positioned(
            top:70,
            left: 100,
            child: 
            SizedBox(
              width: 31,
              height: 27,
              child: Image.asset("lib/assets/icons/crown.png"))
           ),
],),


          ],),
    
          SizedBox(height: 54),
         ],),
       ),
    );
  }
}
