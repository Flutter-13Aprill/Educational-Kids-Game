import 'package:flutter/material.dart';

class HorseHeader extends StatelessWidget {
  const HorseHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return // In your build method:
    SizedBox(
      width: 250,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          // Rounded rectangle container with background image and progress indicator
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Rectangle.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Positioned(
                top: 30,
                child: Image.asset("assets/images/indicator.png"),
              ),
            ),
          ),

          // Horse image overlapping container
          Positioned(
            top: -50, // half of horse image height to overlap
            child: Image.asset(
              'assets/images/horse.png',
              width: 150,
              height: 100,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
