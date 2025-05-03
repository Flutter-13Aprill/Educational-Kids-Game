import 'package:flutter/material.dart';

class VerbalSkillsTab extends StatelessWidget {
  VerbalSkillsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Verbal Skills', style: TextStyle(fontSize: 24)),
            subtitle: Text('Learn and practice verbal skills'),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Practice Exercises', style: TextStyle(fontSize: 20)),
                ElevatedButton(child: Text('Start Exercise'), onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
