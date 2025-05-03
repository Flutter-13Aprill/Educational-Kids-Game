import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_app/screens/verbal_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          child: Row(children: [
            SizedBox(width: 48),
            Image.asset("lib/assets/icons/fire.png"),
            SizedBox(width: 10),
            Text("3", style: GoogleFonts.roboto( fontSize: 25, fontWeight: FontWeight.w400, color: Color(0xFFEB9F4A),)),
            SizedBox(width: 37),
            Image.asset("lib/assets/icons/box.png"),
            SizedBox(width: 10),
            Text("1432", style: GoogleFonts.roboto( fontSize: 25, fontWeight: FontWeight.w400, color: Color(0xFF338F9B),)),
            SizedBox(width: 10),
            Text("XP", style: GoogleFonts.roboto( fontSize: 25, fontWeight: FontWeight.w400, color: Color(0xFF338F9B),)),
             SizedBox(width: 37),
            Image.asset("lib/assets/icons/heart.png"),
            SizedBox(width: 10),
            Image.asset("lib/assets/icons/infinity.png"),

          ],),
        ),

    
      ],),
       ),
    
    
   
body: SafeArea(child: 
SingleChildScrollView(
  child: Column( children: [
  SizedBox(height: 16,),
  Row(children: [
    //FIRST
     SizedBox(width: 24,),
     Text("Logical reasoning", style: GoogleFonts.roboto(color: Colors.black,fontSize: 35, fontWeight: FontWeight.w400,  )),
      SizedBox(width: 12,),
     Image.asset("lib/assets/icons/crown.png"),
     Text("18/40",  style: GoogleFonts.roboto(color: Color(0x99000000),fontSize: 20, fontWeight: FontWeight.w400, )),
      ],),
    Row(
      children: [
        SizedBox(width: 24,),
        Column(
           
          children: [
             SizedBox(height: 10,),
        Stack(
          children: [Container(
        width: 179,
        height: 227,
        decoration: BoxDecoration(
          color: Color(0x66C4C4C4),
          borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
        padding: const EdgeInsets.only(top: 17, left: 48, ),
        child: Text("Unit 1", style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 30, color: Colors.black),
        ),
          ),
        ),
        Positioned(
          top:190,
          left: 16,
          child: Container(
                  width:31,
                  height:27,
                  child:  Image.asset('lib/assets/icons/crown.png',),
                ),
        ),
          Positioned(
        top: 200,
        left: 20,
        child: Container(
                width:149,
                height: 14,
                decoration: BoxDecoration(
                  color: Color(0XFFC4C4C4),
                  borderRadius: BorderRadius.circular(30),
                ),
                ),
          ),
        Positioned(
        top: 200,
        left: 20,
        child: 
          Container(
            width: 73,
            height: 14,
            decoration: BoxDecoration(
              color: Color(0XFFECC055),
              borderRadius: BorderRadius.circular(30),
            ),
          ),)
        
          ] 
        ),
          ],
          
        ),
          SizedBox(width: 20,),
        Container(
    width: 179,
    height: 227,
    decoration: BoxDecoration(
      color: Color(0x66C4C4C4),
      borderRadius: BorderRadius.circular(20),
  ),

    child: SizedBox(
      width:47,
      height: 59,
      child: Image.asset("lib/assets/icons/lock.png",)),
    ),
      ],
    ),
//SECOND
    SizedBox(height: 48,),
  Row(children: [
     SizedBox(width: 24,),
     Text("Artistic thinking", style: GoogleFonts.roboto(color: Colors.black,fontSize: 35, fontWeight: FontWeight.w400,  )),
      SizedBox(width: 50,),
     Image.asset("lib/assets/icons/crown.png"),
     Text("3/40",  style: GoogleFonts.roboto(color: Color(0x99000000),fontSize: 20, fontWeight: FontWeight.w400, )),
      ],),
    Row(
      children: [
        SizedBox(width: 24,),
        Column(
           
          children: [
             SizedBox(height: 10,),
        Stack(
          children: [Container(
        width: 179,
        height: 227,
        decoration: BoxDecoration(
          color: Color(0x66C4C4C4),
          borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
        padding: const EdgeInsets.only(top: 17, left: 48, ),
        child: Text("Unit 1", style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 30, color: Colors.black),
        ),
          ),
        ),
        Positioned(
          top:190,
          left: 16,
          child: Container(
                  width:31,
                  height:27,
                  child:  Image.asset('lib/assets/icons/crown.png',),
                ),
        ),
          Positioned(
        top: 200,
        left: 20,
        child: Container(
                width:149,
                height: 14,
                decoration: BoxDecoration(
                  color: Color(0XFFC4C4C4),
                  borderRadius: BorderRadius.circular(30),
                ),
                ),
          ),
        Positioned(
        top: 200,
        left: 20,
        child: 
          Container(
            width: 124,
            height: 14,
            decoration: BoxDecoration(
              color: Color(0XFFECC055),
              borderRadius: BorderRadius.circular(30),
            ),
          ),)
        
          ] 
        ),
          ],
          
        ),
          SizedBox(width: 20,),
        Container(
    width: 179,
    height: 227,
    decoration: BoxDecoration(
      color: Color(0x66C4C4C4),
      borderRadius: BorderRadius.circular(20),
  ),

    child: SizedBox(
      width:47,
      height: 59,
      child: Image.asset("lib/assets/icons/lock.png",)),
    ),
    //THIRD
    
      ],
    ),
    SizedBox(height: 48,),
  Row(children: [
     SizedBox(width: 24,),
     Text("Verbal skills ", style: GoogleFonts.roboto(color: Colors.black,fontSize: 35, fontWeight: FontWeight.w400,  )),
      SizedBox(width: 97,),
     Image.asset("lib/assets/icons/crown.png"),
     Text("18/40",  style: GoogleFonts.roboto(color: Color(0x99000000),fontSize: 20, fontWeight: FontWeight.w400, )),
      ],),
    Row(
      children: [
        SizedBox(width: 24,),
        Column(
           
          children: [
             SizedBox(height: 10,),
        Stack(
          children: [InkWell(
            onTap: () {
                Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => VerbalScreen())); 
            },
            child: Container(
                    width: 179,
                    height: 227,
                    decoration: BoxDecoration(
            color: Color(0x66C4C4C4),
            borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
                    padding: const EdgeInsets.only(top: 17, left: 48, ),
                    child: Text("Unit 1", style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 30, color: Colors.black),
                    ),
            ),
                    ),
          ),
        Positioned(
          top:190,
          left: 16,
          child: Container(
                  width:31,
                  height:27,
                  child:  Image.asset('lib/assets/icons/crown.png',),
                ),
        ),
          Positioned(
        top: 200,
        left: 20,
        child: Container(
                width:149,
                height: 14,
                decoration: BoxDecoration(
                  color: Color(0XFFC4C4C4),
                  borderRadius: BorderRadius.circular(30),
                ),
                ),
          ),
        Positioned(
        top: 200,
        left: 20,
        child: 
          Container(
            width: 39,
            height: 14,
            decoration: BoxDecoration(
              color: Color(0XFFECC055),
              borderRadius: BorderRadius.circular(30),
            ),
          ),)
        
          ] 
        ),
          ],
          
        ),
          SizedBox(width: 20,),
        Container(
    width: 179,
    height: 227,
    decoration: BoxDecoration(
      color: Color(0x66C4C4C4),
      borderRadius: BorderRadius.circular(20),
  ),

    child: SizedBox(
      width:47,
      height: 59,
      child: Image.asset("lib/assets/icons/lock.png",)),
    ),
      ],
    ),
   
    // her
     

  
    
      
    
 
  ] 
)
),

      )  );
  }
}