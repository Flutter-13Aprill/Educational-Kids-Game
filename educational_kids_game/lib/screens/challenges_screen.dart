import 'package:flutter/material.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // List of image URLs
    List<String> imageUrl = [
      'assets/images/frame.png',
      'assets/images/cactus.png',
      'assets/images/basketball.png',
    ];

    return Scaffold(
      // AppBar to show challenges
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
                'Challenges',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 16,
              children: [
                //first challenge
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/girl.png',
                      width: 90,
                      fit: BoxFit.contain,
                    ),
                    title: Text('Complete 1000 word streak'),
                    subtitle: Text("Win 1000XP along with 300 diamonds."),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Achievements", style: TextStyle(fontSize: 30)),
                ),
                Expanded(
                  //Achievements list
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder:
                        (context, index) => Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: Color.fromRGBO(0, 0, 0, 0.1),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  imageUrl[index],
                                  width: 90,
                                  fit: BoxFit.contain,
                                ),
                                title: Text(
                                  'Lorem Ipsum ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  "is simply dummy text of the printing and typesetting industry.",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
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
