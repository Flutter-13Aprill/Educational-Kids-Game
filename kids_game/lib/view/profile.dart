import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(211, 229, 229, 229),
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Nidhi Pandya',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nidhi12',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                ),

                Row(
                  children: [
                    Icon(
                      Icons.access_time_filled,
                      size: 15,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Joined March 2022',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
            trailing: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/child.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment(0, -0.3),
                ),
              ),
            ),
            isThreeLine: true,
            onTap: () {},
          ),

          Divider(
            color: const Color.fromARGB(255, 222, 218, 218),
            thickness: 3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                leading: Image.asset('assets/images/boom.png'),
                title: Text('Friends updates', style: TextStyle(fontSize: 18)),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
