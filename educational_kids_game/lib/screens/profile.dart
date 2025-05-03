import 'package:flutter/material.dart';
import 'challenges.dart';



class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 92),

            //Profile Header:Displays the profile name "Nidhi Pandya", username "Nidhi", and account creation time.
            Container(
              height: 54,
              width: double.infinity,
              color: const Color(0xFFD9D9D9),
              alignment: Alignment.center,
              child: const Text(
                'Profile',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Nidhi Pandya',
                          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Nidhi',
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.access_time,
                                size: 12,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 6),
                            const Text(
                              'Joined in 2022',
                              style: TextStyle(fontSize: 11, color: Colors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),

                  const SizedBox(width: 16),
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: Image.asset(
                      'assets/pic/user.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.grey,
                thickness: 0.8,
              ),
            ),

            // Friends Update container
            Center(
              child: Container(
                width: 280,
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Image.asset(
                        'assets/pic/party.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'Friends Updates',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),

          //Displays custom boxes for "Streak", "Total XP", "Current League", and "Top 3 Finishes"
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Statistics',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 
                  _buildCustomBox(
                    number: '3',
                    label: 'Streak',
                    iconPath: 'assets/pic/fire.png',
                  ),
                   _buildCustomBox(
                    number: '1432',
                    label: 'Total XP',
                    iconPath: 'assets/pic/clipart.png',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  _buildCustomBox(
                    number: 'Bronze',
                    label: 'Current League',
                    iconPath: 'assets/pic/medal.jpg',
                  ),
                  _buildCustomBox(
                    number: '0',
                    label: 'Top 3 Finishes',
                    iconPath: 'assets/pic/icon1.png',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
      Text(
        'Friends',
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      Text(
        'ADD FRIENDS',
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    ],
  ),
),

           const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: const [
                              Text(
                                'FOLLOWING',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(height: 4),
                              SizedBox(
                                height: 2,
                                child: ColoredBox(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        const VerticalDivider(
                          color: Colors.grey,
                          thickness: 0.8,
                          width: 1,
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'FOLLOWERS',
                              style: TextStyle(fontSize: 11, color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    friendTileSmall('H', 'Hardi', 4367, Colors.purple),
                    const Divider(color: Colors.grey, thickness: 0.3),
                    friendTileSmall('K', 'Krishna', 2334, Colors.red),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            'assets/pic/cat.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Invite your friends',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Tell your friends it’s free and fun to learn on Mental up!',
                                style: TextStyle(fontSize: 11),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    /*Navigation & Interaction: "Invite Friends" button leads to the Challenging screen.*/
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Challenging()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: const Text(
                          'INVITE FRIENDS',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomBox({
    required String number,
    required String label,
    required String iconPath,
  }) {
    return Container(
      width: 160,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Container(
            width: 34,
            height: 34,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              iconPath,
              width: 22,
              height: 22,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 9,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget friendTileSmall(String initial, String name, int xp, Color color) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      dense: true,
      leading: CircleAvatar(
        radius: 14,
        backgroundColor: color,
        child: Text(
          initial,
          style: const TextStyle(fontSize: 11, color: Colors.white),
        ),
      ),
      title: Text(name, style: const TextStyle(fontSize: 12)),
      subtitle: Text('$xp XP', style: const TextStyle(fontSize: 10)),
      trailing: const Icon(Icons.chevron_right, size: 16),
    );
  }
}
