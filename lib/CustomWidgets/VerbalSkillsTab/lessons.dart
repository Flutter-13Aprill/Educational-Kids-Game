import 'package:flutter/material.dart';

class Lessons extends StatelessWidget {
  const Lessons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 120,
          height: 120,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Circular background image
              ClipOval(
                child: Image.asset(
                  'assets/images/circle.png',
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),

              // Smaller foreground image centered
              Image.asset(
                'assets/images/pencil.png',
                width: 60,
                height: 60,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
        SizedBox(height: 8),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Circular background image
                  ClipOval(
                    child: Image.asset(
                      'assets/images/circle.png',
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Smaller foreground image centered
                  Image.asset(
                    'assets/images/book.png',
                    width: 60,
                    height: 60,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            SizedBox(width: 16),

            SizedBox(
              width: 120,
              height: 120,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Circular background image
                  ClipOval(
                    child: Image.asset(
                      'assets/images/circle.png',
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Smaller foreground image centered
                  Image.asset(
                    'assets/images/bike.png',
                    width: 60,
                    height: 60,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 8),

        SizedBox(
          width: 120,
          height: 120,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Circular background image
              ClipOval(
                child: Image.asset(
                  'assets/images/circle.png',
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),

              // Smaller foreground image centered
              Image.asset(
                'assets/images/lock.png',
                width: 60,
                height: 60,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Circular background image
                  ClipOval(
                    child: Image.asset(
                      'assets/images/circle.png',
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Smaller foreground image centered
                  Image.asset(
                    'assets/images/lock.png',
                    width: 60,
                    height: 60,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            SizedBox(width: 16),
            SizedBox(
              width: 120,
              height: 120,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Circular background image
                  ClipOval(
                    child: Image.asset(
                      'assets/images/circle.png',
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Smaller foreground image centered
                  Image.asset(
                    'assets/images/lock.png',
                    width: 60,
                    height: 60,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 8),

        SizedBox(
          width: 120,
          height: 120,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Circular background image
              ClipOval(
                child: Image.asset(
                  'assets/images/circle.png',
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),

              // Smaller foreground image centered
              Image.asset(
                'assets/images/lock.png',
                width: 60,
                height: 60,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
