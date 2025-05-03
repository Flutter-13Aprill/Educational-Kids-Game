import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(229, 229, 229, 0.8),
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // الاسم والصورة
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nidhi Pandya',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('Nidhi12', style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(Icons.access_time,
                              size: 14, color: Colors.black87),
                          SizedBox(width: 4),
                          Text('Joined March 2022',
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ],
                  ),
                  // صورة البروفايل
                  Container(
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'assets/images/girl.jpg',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),

              const SizedBox(height: 16),

              // تحديثات الأصدقاء
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300, width: 3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/icons/party.png', width: 30),
                        const SizedBox(width: 8),
                        const Text('Friends updates',
                            style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios, size: 18)
                  ],
                ),
              ),

              const SizedBox(height: 24),

              const Text('Statistics',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

              const SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildStatBox('3', 'Day Streak', 'assets/icons/fire.png'),
                  buildStatBox('1432', 'Total XP', 'assets/icons/Vector-4.png'),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildStatBox('Bronze', 'Current League',
                      'assets/icons/noto_3rd-place-medal.png'),
                  buildStatBox(
                      '0', 'Top 3 Finishes', 'assets/icons/bx_medal.png'),
                ],
              ),

              const SizedBox(height: 24),

              // الأصدقاء
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Friends',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('ADD FRIENDS',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                ],
              ),

              const SizedBox(height: 12),

              // Tabs
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.blue.shade600, width: 2)),
                      ),
                      child: const Center(
                          child: Text('FOLLOWING',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue))),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: const Center(
                          child: Text('FOLLOWERS',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey))),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              //frind
              buildFriendRow(
                  'H', 'Hardi', '4367 XP', Color.fromRGBO(171, 112, 223, 1)),
              buildFriendRow(
                  'K', 'Krishna', '2334 XP', Color.fromRGBO(223, 112, 112, 1)),

              const SizedBox(height: 24),

              //invite frinds
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300, width: 3),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/cat.png',
                            width: 120, height: 116),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Invite your friends',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              SizedBox(height: 4),
                              Text(
                                "Tell your friends it’s free and fun to learn on Mental up!",
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(2, 161, 251, 1),
                          shadowColor: const Color.fromRGBO(2, 161, 251, 0.5),
                        ),
                        child: const Text('INVITE FRIENDS',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //statisic box
  Widget buildStatBox(String number, String label, String iconPath) {
    return Container(
      width: 180,
      height: 70,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300, width: 3),
      ),
      child: Row(
        children: [
          Image.asset(iconPath, width: 24),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(number,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16)),
              Text(label, style: const TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }

  // 🔹 صف صديق
  Widget buildFriendRow(
      String letter, String name, String xp, Color circleColor) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300, width: 3),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: circleColor,
            child: Text(
              letter,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              Text(xp,
                  style: const TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        ],
      ),
    );
  }
}
