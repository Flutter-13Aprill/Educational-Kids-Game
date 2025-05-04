import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Profile appbar
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Container(
            color: Color.fromRGBO(229, 229, 229, 0.8),
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 8),
            child: Center(
              child: Text(
                'Profile',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 16,
              children: [
                // Profile Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nidhi Pandya', style: TextStyle(fontSize: 30)),
                        Text('Nidhi12', style: TextStyle(fontSize: 20)),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Icon(
                              Icons.watch_later,
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              size: 20,
                            ),
                            Text('Joined March 2022'),
                          ],
                        ),
                      ],
                    ),
                    // Profile Avatar
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/avatar.jpg'),
                    ),
                  ],
                ),
                Divider(),
                Expanded(
                  child: ListView(
                    children: [
                      Column(
                        spacing: 16,
                        children: [
                          // Friends updates section
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: Color.fromRGBO(0, 0, 0, 0.1),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ListTile(
                                title: Text(
                                  '🎊 Friends updates',
                                  style: TextStyle(fontSize: 25),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Color.fromRGBO(0, 0, 0, 0.1),
                                ),
                              ),
                            ),
                          ),
                          // Statistics Section
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Statistics',
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                          Row(
                            spacing: 8,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: ListTile(
                                    leading: Image.asset(
                                      'assets/images/fire.png',
                                      height: 25,
                                      width: 25,
                                    ),
                                    title: Text('3'),
                                    subtitle: Text(
                                      'Day Streak',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: ListTile(
                                    leading: Image.asset(
                                      'assets/images/Lighting.png',
                                      height: 25,
                                      width: 25,
                                    ),
                                    title: Text('1432'),
                                    subtitle: Text(
                                      'Total XP',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            spacing: 8,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: ListTile(
                                    leading: Image.asset(
                                      'assets/images/medal.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    title: Text('Bronze'),
                                    subtitle: Text(
                                      'Current League',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: ListTile(
                                    leading: Image.asset(
                                      'assets/images/bx_medal.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    title: Text('0'),
                                    subtitle: Text(
                                      'Top 3 Finishes',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Friends section
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  'Friends',
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),

                              Text(
                                'ADD FRIENDS',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                          // List of friends
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Color.fromRGBO(0, 0, 0, 0.1),
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'FOLLOWING',
                                        style: TextStyle(color: Colors.blue),
                                      ),

                                      Text('FOLLOWERS'),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 5,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 5,
                                        color: Color.fromRGBO(0, 0, 0, 0.1),
                                      ),
                                    ),
                                  ],
                                ),

                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Color.fromRGBO(
                                      171,
                                      112,
                                      223,
                                      1,
                                    ),
                                    child: Text(
                                      'H',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  title: Text('Hardi'),
                                  subtitle: Text('4367 XP'),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color.fromRGBO(0, 0, 0, 0.1),
                                  ),
                                ),
                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Color.fromRGBO(
                                      223,
                                      112,
                                      112,
                                      1,
                                    ),
                                    child: Text(
                                      'k',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  title: Text('Krishna'),
                                  subtitle: Text('2334 XP'),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color.fromRGBO(0, 0, 0, 0.1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Invite Friends Section
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Color.fromRGBO(0, 0, 0, 0.1),
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                spacing: 16,
                                children: [
                                  Row(
                                    spacing: 16,
                                    children: [
                                      Image.asset(
                                        'assets/images/cat.png',
                                        width: 150,
                                        height: 150,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Invite your friends !',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Tell your friends it’s\nfree and fun to learn\non Mental up!',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width / 1.2,
                                    height:
                                        MediaQuery.sizeOf(context).width / 7,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.blue,
                                          blurRadius: 12,
                                          spreadRadius: 2,
                                          offset: Offset(0, 6),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            16,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'INVITE FRIENDS',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
