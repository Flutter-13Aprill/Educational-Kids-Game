import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  // The Profile screen is built using Flutter's layout structure with Column and Row for organizing content. It includes interactive elements like ListTile for navigation, along with visual components like CircleAvatar for profile picture display, and simple Text widgets for showing user info and statistics.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: AppBar(
            backgroundColor: Color(0xCCE5E5E5),
            title: Text(
              "Profile",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
            automaticallyImplyLeading: false,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nidhi Pandya",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 5),

                              Text(
                                "Nidhi12",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[700],
                                ),
                              ),
                              SizedBox(height: 5),

                              Row(
                                children: [
                                  Icon(
                                    Icons.watch_later,
                                    color: Colors.grey[700],
                                    size: 20,
                                  ),
                                  SizedBox(width: 3),
                                  Text(
                                    "Joined March 2022",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                              "assets/images/profile-image1.jpg",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 3, color: Color(0x66C4C4C4)),
                SizedBox(height: 5),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        width: 370,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0x66C4C4C4),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListTile(
                          title: Text("Friends updates"),
                          leading: Image.asset(
                            "assets/icons/celebration-icon.png",
                            height: 30,
                            width: 30,
                          ),
                          trailing: Icon(
                            Icons.keyboard_arrow_right_outlined,
                            color: Color(0x66C4C4C4),
                            size: 35,
                          ),
                        ),
                      ),

                      SizedBox(height: 15),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Statistics",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Container(
                            width: 180,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0x66C4C4C4),
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Image.asset(
                                    "assets/icons/fire-icon.png",
                                    height: 40,
                                    width: 40,
                                  ),
                                ),
                                SizedBox(width: 12),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "3",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "Day Streak",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),

                          Container(
                            height: 60,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color(0x66C4C4C4),
                                width: 3,
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Image.asset(
                                    "assets/icons/lightning-icon.png",
                                  ),
                                ),
                                SizedBox(width: 12),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "data",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "data",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 180,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0x66C4C4C4),
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Image.asset(
                                    "assets/icons/bronze-icon.png",
                                    height: 40,
                                    width: 40,
                                  ),
                                ),
                                SizedBox(width: 12),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Bronze",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "Current League",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),

                          Container(
                            height: 60,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color(0x66C4C4C4),
                                width: 3,
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Image.asset(
                                    "assets/icons/star-icon.png",
                                  ),
                                ),
                                SizedBox(width: 12),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "0",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "Top 3 Finishes",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Friends",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),

                          Text(
                            "ADD FRIENDS",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff02A1FB),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),

                      Stack(
                        children: [
                          Container(
                            height: 212,
                            width: 370,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Color(0x66C4C4C4),
                                width: 3,
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "FOLLOWING",
                                        style: TextStyle(
                                          color: Color(0xff02A1FB),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        "FOLLOWERS",
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 3,
                                    left: 8,
                                  ),
                                  child: ListTile(
                                    title: Text("Remas"),
                                    subtitle: Text(
                                      "4367 XP",
                                      style: TextStyle(color: Colors.grey[600]),
                                    ),
                                    leading: CircleAvatar(
                                      backgroundColor: Color(0xFFDFD8FD),
                                      child: Text("R"),
                                    ),
                                    trailing: Icon(
                                      Icons.keyboard_arrow_right_outlined,
                                      color: Color(0x66C4C4C4),
                                      size: 30,
                                    ),
                                  ),
                                ),
                                Divider(thickness: 3, color: Color(0x66C4C4C4)),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 3,
                                    left: 8,
                                  ),
                                  child: ListTile(
                                    title: Text("Lamia"),
                                    subtitle: Text(
                                      "2334 XP",
                                      style: TextStyle(color: Colors.grey[600]),
                                    ),
                                    leading: CircleAvatar(
                                      backgroundColor: Color(0xFFB3E5FC),
                                      child: Text("L"),
                                    ),
                                    trailing: Icon(
                                      Icons.keyboard_arrow_right_outlined,
                                      color: Color(0x66C4C4C4),
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 50,
                            left: 0,
                            right: 0,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 3,
                                    color: Color(0xff02A1FB),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 3,
                                    color: Color(0x66C4C4C4),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 200,
                        width: 370,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Color(0x66C4C4C4),
                            width: 3,
                          ),
                          boxShadow: [],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/cat-image.png",
                                    height: 100,
                                    width: 100,
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,

                                      children: [
                                        Text(
                                          "Invite your friends",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Tell your friends it’s free and fun to learn on Mental up!",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Color(0xff02A1FB),
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x8002A1FB),
                                      offset: Offset(4, 4),
                                      blurRadius: 10,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Text(
                                  "INVITE FRIENDS",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
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
          ],
        ),
      ),
    );
  }
}
