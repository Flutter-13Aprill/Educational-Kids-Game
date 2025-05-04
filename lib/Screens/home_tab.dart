import 'package:flutter/material.dart';
import 'package:project3/CustomWidgets/HomeTab/unit.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Image.asset("assets/images/header.png")),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.9,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Unit(unitTitle: "Logical Reasoning"),
              Unit(unitTitle: "artistic Thinking"),
              Unit(unitTitle: "Verbal Skills"),
            ],
          ),
        ),
      ),
    );
  }
}
