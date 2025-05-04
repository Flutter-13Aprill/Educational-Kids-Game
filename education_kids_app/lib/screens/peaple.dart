import 'package:education_kids_app/screens/gaol.dart';
import 'package:education_kids_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Peaple extends StatelessWidget {
  const Peaple({super.key});

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
                child: Text('Profile', style: TextStyle(fontSize: 24)),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nidhi Pandya',
                              style: TextStyle(fontSize: 24),
                            ),
                            Text(
                              'Nidhi Pandya',
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 124, 124, 124),
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Image.asset('assets/clock.png', width: 20),
                                SizedBox(width: 8),
                                Text(
                                  'Joined March 2022',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image.asset('assets/girl.png', width: 100),
                  ],
                ),
              ),
              Divider(
                height: 10,
                thickness: 4,
                color: const Color.fromARGB(25, 0, 0, 0),
              ),
              SizedBox(height: 16),

              Container(
                width: 350,
                height: 65,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(25, 0, 0, 0),
                    width: 4,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/party.png'),
                      Text('Friends updates', style: TextStyle(fontSize: 20)),
                      SizedBox(width: 32),
                      Image.asset('assets/row.png'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Statistics',
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),

                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 170,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color.fromARGB(25, 0, 0, 0),
                              width: 4,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/fire.png', width: 20),
                                SizedBox(width: 8),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('3'),
                                    Text(
                                      'Day Streak',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: const Color.fromARGB(
                                          255,
                                          105,
                                          105,
                                          105,
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
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color.fromARGB(25, 0, 0, 0),
                              width: 4,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/lightning.png', width: 20),
                                SizedBox(width: 8),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('1432'),
                                    Text(
                                      'Total XP',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: const Color.fromARGB(
                                          255,
                                          105,
                                          105,
                                          105,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 170,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color.fromARGB(25, 0, 0, 0),
                              width: 4,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/3rd.png', width: 20),
                                SizedBox(width: 8),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Bronze'),
                                    Text(
                                      'Current League',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: const Color.fromARGB(
                                          255,
                                          105,
                                          105,
                                          105,
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
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color.fromARGB(25, 0, 0, 0),
                              width: 4,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/numStar.png', width: 20),
                                SizedBox(width: 8),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('0'),
                                    Text(
                                      'Top 3 Finishes',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: const Color.fromARGB(
                                          255,
                                          105,
                                          105,
                                          105,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Friends', style: TextStyle(fontSize: 30)),
                        Text(
                          'ADD FRIENDS',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 2, 161, 251),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Container(
                      width: 350,
                      height: 190,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(25, 0, 0, 0),
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: Column(
                        children: [
                          SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'FOLLOWING',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(
                                      255,
                                      2,
                                      161,
                                      251,
                                    ),
                                  ),
                                ),
                                Text(
                                  'FOLLOWERS',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 8),
                          Row(
                            // this for divider
                            children: [
                              Expanded(
                                flex: 2, // Left part (blue)
                                child: Container(height: 4, color: Colors.blue),
                              ),
                              Expanded(
                                flex: 2, // Right part (gray/black)
                                child: Container(
                                  height: 4,
                                  color: const Color.fromARGB(
                                    25,
                                    0,
                                    0,
                                    0,
                                  ), // light black
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 8),

                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    color: const Color.fromARGB(
                                      255,
                                      112,
                                      83,
                                      255,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'H',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hardi',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Text(
                                      '4367 XP',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: const Color.fromARGB(
                                          123,
                                          0,
                                          0,
                                          0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 120),
                                Image.asset('assets/row.png'),
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          Divider(
                            height: 10,
                            thickness: 4,
                            color: const Color.fromARGB(25, 0, 0, 0),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    color: const Color.fromARGB(
                                      255,
                                      211,
                                      51,
                                      51,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'K',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Krishna',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Text(
                                      '2334 XP',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: const Color.fromARGB(
                                          123,
                                          0,
                                          0,
                                          0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 120),
                                Image.asset('assets/row.png'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),

                    Container(
                      width: 350,
                      height: 230,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(25, 0, 0, 0),
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('assets/cat.png'),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Invite your friends',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Tell your friends it’s\n free and fun to learn\n on Mental up!',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            width: 250,
                            height: 50,
                            decoration: BoxDecoration(
                              // boxShadow: ,
                              color: const Color.fromARGB(255, 2, 161, 251),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(155, 2, 160, 251),
                                  spreadRadius: 2,
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'INVITE FRIENDS',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
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
                },
                child: Ink.image(
                  image: AssetImage('assets/peaplePurple.png'),
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
