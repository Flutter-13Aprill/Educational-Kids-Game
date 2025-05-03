import 'package:flutter/material.dart';

// here where the user can show their profile includes:
//Profile picture
//Name
//Username
//Joined date

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar for Profile word with colored background
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 30),
          child: Center(
            child: Container(
              height: 50,
              width: double.infinity,
              color: const Color.fromARGB(255, 229, 229, 229),
              child: Container(
                alignment: Alignment.center,
                child: Text('Profile', style: TextStyle(fontSize: 25)),
              ),
            ),
          ),
        ),
      ),

      body: ListView(
        children: [
          SizedBox(height: 20),
          Row(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //here the user can see  name and username and profile picture and joined date
              SizedBox(
                width: 200,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nidhi Pandya', style: TextStyle(fontSize: 20)),
                    Text(
                      'Nidhi12',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(120, 0, 0, 0),
                      ),
                    ),
                    Row(
                      spacing: 8,
                      children: [
                        Icon(Icons.timer, size: 15),
                        Text('Joined March 2022'),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 200,
                height: 100,
                alignment: Alignment.centerRight,
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  width: 60,
                  height: 75,
                  child: Image.asset(
                    'assets/project_images/girlImage.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          Container(width: double.infinity, height: 2, color: Colors.black12),
          SizedBox(height: 20),
          //here where the user can show their Friends Updates
          UnconstrainedBox(
            child: Container(
              width: 380,
              height: 65,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 45,
                    height: 45,
                    child: Image.asset(
                      'assets/project_icons/friendsUpdateIcon.png',
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 260,
                    height: 45,
                    child: Text(
                      'Friends Updats',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.black12),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
          //here for the user Statistics includes:
          //Streak
          //Total XP
          //League
          //Top 3 Finishes
          UnconstrainedBox(
            child: SizedBox(
              width: 380,
              height: 220,
              child: Column(
                spacing: 16,
                children: [
                  SizedBox(
                    width: 380,
                    height: 50,
                    child: Text('Statistics', style: TextStyle(fontSize: 25)),
                  ),

                  SizedBox(
                    width: 380,
                    height: 60,
                    child: Row(
                      spacing: 16,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Streak container
                        Container(
                          width: 180,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black12, width: 3),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Row(
                              spacing: 16,
                              children: [
                                Image.asset(
                                  'assets/project_icons/fireForStreakIcon.png',
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                      child: Text(
                                        '3',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                    Text(
                                      'Day Streak',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: const Color.fromARGB(
                                          117,
                                          0,
                                          0,
                                          0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        //Total XP container
                        Container(
                          width: 180,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black12, width: 3),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Row(
                              spacing: 16,
                              children: [
                                Image.asset(
                                  'assets/project_icons/electricXpIcon.png',
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                      child: Text(
                                        '1432',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                    Text(
                                      'Total XP',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: const Color.fromARGB(
                                          117,
                                          0,
                                          0,
                                          0,
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
                  ),
                  //current League container
                  SizedBox(
                    width: 380,
                    height: 60,
                    child: Row(
                      spacing: 16,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 180,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black12, width: 3),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Row(
                              spacing: 16,
                              children: [
                                Image.asset(
                                  'assets/project_icons/bronzeMedalIcon.png',
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                      child: Text(
                                        'Bronze',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                    Text(
                                      'Current Leauge',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: const Color.fromARGB(
                                          117,
                                          0,
                                          0,
                                          0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        //Top 3 Finishes container
                        Container(
                          width: 180,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black12, width: 3),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Row(
                              spacing: 16,
                              children: [
                                Image.asset(
                                  'assets/project_icons/starMedalIcon.png',
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                      child: Text(
                                        '0',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                    Text(
                                      'Top 3 Finishes',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: const Color.fromARGB(
                                          117,
                                          0,
                                          0,
                                          0,
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
                  ),
                ],
              ),
            ),
          ),
          //Friends container includes:
          //Following
          //Followers
          //ADD FRIENDS 
          //Freinds
          //Each friend profile picture and name and their XP
          UnconstrainedBox(
            child: Builder(
              builder: (context) {
                return SizedBox(
                  width: 380,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        width: 230,
                        height: 50,
                        child: Text('Friends', style: TextStyle(fontSize: 25)),
                      ),
                      Text(
                        'ADD FRIENDS',
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          UnconstrainedBox(
            child: Container(
              width: 380,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 3),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 380,
                    height: 30,

                    child: Row(
                      spacing: 16,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 170,
                          height: 25,
                          child: Text(
                            'FOLLOWING',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.blue,
                            ),
                          ),
                        ),

                        Container(
                          alignment: Alignment.center,
                          width: 170,
                          height: 25,
                          child: Text(
                            'FOLLWERS',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 380,
                    child: Row(
                      children: [
                        Container(width: 190, height: 3, color: Colors.blue),
                        Container(width: 184, height: 3, color: Colors.black12),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: SizedBox(
                      width: 380,
                      height: 50,
                      child: Row(
                        spacing: 16,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 147, 62, 187),
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              'H',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 250,
                                height: 20,
                                child: Text(
                                  'Hardi',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                '4367 XP',
                                style: TextStyle(
                                  color: const Color.fromARGB(117, 0, 0, 0),
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.black12),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 3,
                    width: double.infinity,
                    color: Colors.black12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: SizedBox(
                      width: 380,
                      height: 50,
                      child: Row(
                        spacing: 16,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 211, 79, 112),
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              'K',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 250,
                                height: 20,
                                child: Text(
                                  'Krishna',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                '2334 XP',
                                style: TextStyle(
                                  color: const Color.fromARGB(117, 0, 0, 0),
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.black12),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          //Container to invite friends includes:
          //catImage.png
          //text to promote inviting friends
          //INVITE FRIENDS BUTTON
          UnconstrainedBox(
            child: Container(
              width: 380,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 3, color: Colors.black12),
              ),
              child: Column(
                spacing: 8,
                children: [
                  SizedBox(height: 5),
                  SizedBox(
                    width: 350,
                    height: 125,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 64,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/project_images/catImage.png'),
                        SizedBox(
                          width: 150,
                          height: 100,
                          child: Column(
                            spacing: 8,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Invite your friends',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Tell your friends it\'s free and fun to learn on Mental up!',
                                style: TextStyle(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},

                      child: Text(
                        'INVITE FRIENDS',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
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
