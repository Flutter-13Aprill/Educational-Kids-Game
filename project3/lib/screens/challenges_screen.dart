import 'package:flutter/material.dart';


//here where the user can display the challenges and thier achivments


class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar for Challenges Text
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
                child: Text('Challenges', style: TextStyle(fontSize: 25)),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 25),
          //here the is the challenges container includes:
          //image for each challenge 
          //text for the challenge detaile
          //text for the reward for the challenge
          UnconstrainedBox(
            child: Container(
              width: 380,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black12, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  spacing: 16,
                  children: [
                    //challenge image
                    Image.asset('assets/project_images/wordStreakImage.png'),

                    SizedBox(
                      width: 200,
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Chellenge detaile text
                          Text(
                            'Complete 1000 word streak',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          //the reward text
                          Text(
                            'Win 1000XP along with 300 diamonds.',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          //here where the achievements are and includes
          //Image for the achievements
          //title text for the achievements
          //detailes of the achievements
          UnconstrainedBox(
            child: SizedBox(
              width: 380,
              child: Text(
                'Achievements',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          UnconstrainedBox(
            child: Container(
              width: 380,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black12, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  spacing: 16,
                  children: [
                    Container(width: 100,height: 100,alignment: Alignment.center,
                      child: Image.asset('assets/project_images/artImage.png')),

                    SizedBox(
                      width: 200,
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'is simply dummy text of printing and typesetting indusrty.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 25,),
           UnconstrainedBox(
            child: Container(
              width: 380,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black12, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  spacing: 16,
                  children: [
                    Container(width: 100,height: 100,alignment: Alignment.center,
                      child: Image.asset('assets/project_images/cactusImage.png')),

                    SizedBox(
                      width: 200,
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'is simply dummy text of printing and typesetting indusrty.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),  
          SizedBox(height: 25,),
           UnconstrainedBox(
            child: Container(
              width: 380,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black12, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  spacing: 16,
                  children: [
                    Container(width: 100,height: 100,alignment: Alignment.center,
                      child: Image.asset('assets/project_images/basketBallImage.png')),

                    SizedBox(
                      width: 200,
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'is simply dummy text of printing and typesetting indusrty.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
