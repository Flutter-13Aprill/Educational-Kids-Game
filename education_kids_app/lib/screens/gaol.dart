import 'package:education_kids_app/screens/home_screen.dart';
import 'package:education_kids_app/screens/peaple.dart';
import 'package:flutter/material.dart';

class Gaol extends StatelessWidget {
  const Gaol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 245, 242),
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: const Color.fromARGB(255, 250, 245, 242),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50), // height of the bottom widget
          child: Container(
            color: const Color.fromARGB(255, 229, 229, 229),
            height: 50,

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: Center(
                child: Text('Challenges', style: TextStyle(fontSize: 24)),
              ),
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
         child:  Column(
          spacing: 24,
          children: [
            Container(
              width: 350,
              height: 120,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(33, 0, 0, 0), width: 4),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(children: [
                Image.asset('assets/girlOnSoft.png'),
                SizedBox(width: 16,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Complete 1000 word\nstreak', style: TextStyle(fontSize: 19),),
                  Text('Win 1000XP along with 300\ndiamonds.')
                ],)
              ],),
            ),
            Row( mainAxisAlignment: MainAxisAlignment.start,
              children: [Text('Achivements', style: TextStyle(fontSize: 32),),],),  


            Container(
              width: 350,
              height: 120,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(33, 0, 0, 0), width: 4),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(children: [
                Image.asset('assets/tree.png'),
                SizedBox(width: 16,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Lorem Ipsum ', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
                  Text('is simply dummy text of\nthe printing and\ntypesetting industry.')
                ],)
              ],),
            ),





            Container(
              width: 350,
              height: 120,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(33, 0, 0, 0), width: 4),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(children: [
                Image.asset('assets/cactus.png'),
                SizedBox(width: 16,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Lorem Ipsum ', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
                  Text('is simply dummy text of\nthe printing and\ntypesetting industry.')
                ],)
              ],),
            ),






            Container(
              width: 350,
              height: 120,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(33, 0, 0, 0), width: 4),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(children: [
                Image.asset('assets/ball.png', width: 120,),
                SizedBox(width: 16,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Lorem Ipsum ', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
                  Text('is simply dummy text of\nthe printing and\ntypesetting industry.')
                ],)
              ],),
            )

          ],
        ),
        )
      ),








      bottomNavigationBar: BottomAppBar(
        height: 70,
        color: const Color.fromARGB(255, 229, 229, 229),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Ink.image(
                  image: AssetImage('assets/houseWhite.png'),
                  width: 40,
                  height: 40,
                ),
              ),

              InkWell(
                onTap: () {
                },
                child: Ink.image(
                  
                  image: AssetImage('assets/gaolRed.png'),
                  width: 40,
                  height: 40,
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Peaple()),
                  );
                },
                child: Ink.image(
                  image: AssetImage('assets/peaple.png'),
                  width: 40,
                  height: 40,
                ),
              ),

              InkWell(
                onTap: () {},
                child: Ink.image(
                  image: AssetImage('assets/setting.png'),
                  width: 40,
                  height: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}