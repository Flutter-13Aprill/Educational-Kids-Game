import 'package:flutter/material.dart';

class AchievementWidgets extends StatelessWidget {
  const AchievementWidgets({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.1), width: 3),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(imagePath),

          Column(
            spacing: 8,
            children: [
              SizedBox(
                width: 218,
                child: Text(
                  'Lorem Ipsum ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),

              SizedBox(
                width: 218,
                child: Text(
                  'is simply dummy text of the printing and typesetting industry..',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
