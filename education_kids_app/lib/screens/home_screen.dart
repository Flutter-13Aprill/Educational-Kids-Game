import 'package:education_kids_app/screens/gaol.dart';
import 'package:education_kids_app/screens/peaple.dart';
import 'package:education_kids_app/screens/verbal_skills.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/fire.png', width: 30),
                  Text(
                    '3',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 235, 159, 72),
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 24),

                  Image.asset('assets/box.png', width: 30),
                  Text(
                    '1432 XP',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 51, 143, 155),
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 24),

                  Image.asset('assets/heart.png', width: 30),
                  Image.asset('assets/infinity.png', width: 30),
                ],
              ),
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),

        child: ListView(
          children: [
            Column(
              spacing: 8,
              children: [
                SizedBox(height: 24),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Logical reasoning', style: TextStyle(fontSize: 32)),
                    SizedBox(width: 16),
                    Image.asset('assets/crown.png'),
                    Text('18/40', style: TextStyle(fontSize: 20)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 222, 222, 222),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Unit 1', style: TextStyle(fontSize: 24)),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  'assets/crown.png',
                                  width: 24,
                                  height: 24,
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: LinearProgressIndicator(
                                      value:
                                          0.45, // your progress from 0.0 to 1.0
                                      minHeight: 12,
                                      backgroundColor: const Color.fromARGB(255,196,196,196,),
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        const Color.fromARGB(255, 236, 192, 85),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 222, 222, 222),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Image.asset('assets/lock.png')],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Artistic thinking', style: TextStyle(fontSize: 32)),
                    SizedBox(width: 40),
                    Image.asset('assets/crown.png'),
                    Text('35/40', style: TextStyle(fontSize: 20)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 222, 222, 222),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Unit 1', style: TextStyle(fontSize: 24)),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  'assets/crown.png',
                                  width: 24,
                                  height: 24,
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: LinearProgressIndicator(
                                      value:
                                          0.87, // your progress from 0.0 to 1.0
                                      minHeight: 12,
                                      backgroundColor: const Color.fromARGB(255,196,196,196,),
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        const Color.fromARGB(255, 236, 192, 85),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 222, 222, 222),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Image.asset('assets/lock.png')],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Verbal skills', style: TextStyle(fontSize: 32)),
                    SizedBox(width: 40),
                    Image.asset('assets/crown.png'),
                    Text('3/40', style: TextStyle(fontSize: 20)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VerbalSkills()),
                        );
                      },

                      child:  Container(
                      width: 170,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 222, 222, 222),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Unit 1', style: TextStyle(fontSize: 24)),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  'assets/crown.png',
                                  width: 24,
                                  height: 24,
                                ),
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: LinearProgressIndicator(
                                      value:0.07, // your progress from 0.0 to 1.0
                                      minHeight: 12,
                                      backgroundColor: const Color.fromARGB(255,196,196,196,),
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        const Color.fromARGB(255, 236, 192, 85),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),


                    ),
                    
                    Container(
                      width: 170,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 222, 222, 222),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Image.asset('assets/lock.png')],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,)
              ],
            ),
          ],
        ),
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
                onTap: () {},
                child: Ink.image(
                  image: AssetImage('assets/hoouse.png'),
                  width: 40,
                  height: 40,
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Gaol()),
                  );
                },
                child: Ink.image(
                  
                  image: AssetImage('assets/gaol.png'),
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
