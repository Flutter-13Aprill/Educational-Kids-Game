import 'package:flutter/material.dart';
import 'package:project3/CustomWidgets/VerbalSkillsTab/horse_header.dart';
import 'package:project3/CustomWidgets/VerbalSkillsTab/lessons.dart';
import 'package:project3/CustomWidgets/VerbalSkillsTab/verbal_bar.dart';

class VerbalSkillsTab extends StatelessWidget {
  VerbalSkillsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        clipBehavior: Clip.none,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: VerbalBar(),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [SizedBox(height: 50), HorseHeader(), Lessons()],
        ),
      ),
    );
  }
}
