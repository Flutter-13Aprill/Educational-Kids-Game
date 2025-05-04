import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileFriends extends StatelessWidget {
  const ProfileFriends({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Friends", style: GoogleFonts.roboto(fontSize: 30)),
              Text(
                "ADD FRIENDS",
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(2, 161, 251, 1),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),

          // Container to wrap the following and followers sections
          Container(
            width: 377,
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: Color.fromRGBO(0, 0, 0, 0.2)),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                // Row to separate the "Following" and "Followers" sections
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 188.5,

                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Color(0xff02A1FB)),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 11),
                            child: Text(
                              "FOLLOWING",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff02A1FB),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 156,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 11),
                            child: Text(
                              "FOLLOWERS",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // Profile Friend 1 (Hardi)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 21),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Color(0xffAB70DF),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            Text(
                              "H",
                              style: GoogleFonts.roboto(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 16),

                        // Friend info (Name and XP)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hardi",
                              style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "4367 XP",
                              style: GoogleFonts.roboto(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                // Divider between profiles
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.5)),
                    ),
                  ),
                ),

                // Profile Friend 2 (Krishna)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 21),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Color(0xffDF7070),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            Text(
                              "H",
                              style: GoogleFonts.roboto(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 16),

                        // Friend info (Name and XP)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Krishna",
                              style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "2334 XP",
                              style: GoogleFonts.roboto(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
