import 'package:flutter/material.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Settings', style: TextStyle(fontSize: 24)),
          subtitle: Text('Manage your app settings'),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Notifications', style: TextStyle(fontSize: 20)),
              SwitchListTile(
                title: Text('Enable Notifications'),
                value: true,
                onChanged: (bool value) {},
              ),
              SwitchListTile(
                title: Text('Enable Sounds'),
                value: false,
                onChanged: (bool value) {},
              ),
            ],
          ),
        ),
        ElevatedButton(child: Text('LOG OUT'), onPressed: () {}),
      ],
    );
  }
}
