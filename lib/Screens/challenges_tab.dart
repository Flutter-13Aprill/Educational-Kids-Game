import 'package:flutter/material.dart';

class ChallengesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Complete 1000 word streak'),
          subtitle: Text('Win 1000XP along with 300 diamonds.'),
        ),
        ...List.generate(
          3,
          (index) => Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lorem Ipsum',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'is simply dummy text of the printing and typesetting industry.',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
