import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Nidhi Pandya', style: TextStyle(fontSize: 24)),
          subtitle: Text('Nidhi12\nJoined March 2022'),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Statistics', style: TextStyle(fontSize: 20)),
              CheckboxListTile(
                title: Text('3 Day Streak'),
                value: false,
                onChanged: null,
              ),
              CheckboxListTile(
                title: Text('1432 Total XP'),
                value: true,
                onChanged: null,
              ),
            ],
          ),
        ),
        ElevatedButton(child: Text('INVITE FRIENDS'), onPressed: () {}),
      ],
    );
  }
}
