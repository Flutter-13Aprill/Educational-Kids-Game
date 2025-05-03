import 'package:flutter/material.dart';

class VerbalSkillsScreen extends StatelessWidget {
  const VerbalSkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF9F5),
      body: SafeArea(
        child: Column(
          children: [
            // 🔼 Top bar with title and icons
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Verbal skills',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.emoji_events, color: Colors.amber),
                      SizedBox(width: 4),
                      Text('3'),
                      SizedBox(width: 12),
                      Icon(Icons.diamond, color: Colors.blue),
                      SizedBox(width: 4),
                      Text('213'),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // 🐴 Horse image with unit info
            Column(
              children: [
                Image.asset('assets/images/horse.png', height: 80),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      const Text('Unit 1'),
                      const SizedBox(height: 6),
                      LinearProgressIndicator(
                        value: 3 / 40,
                        minHeight: 6,
                        backgroundColor: Colors.grey[300],
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // 🔘 Grid of circles
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: [
                    _circleItem(
                      'assets/images/pencil.png',
                      'Intro',
                      isLocked: false,
                    ),
                    _circleItem(
                      'assets/images/book.png',
                      'Phrases',
                      isLocked: false,
                    ),
                    _circleItem(
                      'assets/images/bike.png',
                      'Travel',
                      isLocked: false,
                    ),
                    _circleItem('', '', isLocked: true),
                    _circleItem('', '', isLocked: true),
                    _circleItem('', '', isLocked: true),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 🔘 Circle item widget
  Widget _circleItem(String imagePath, String label, {required bool isLocked}) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF84BFC4),
                border: Border.all(color: Colors.grey.shade400, width: 4),
              ),
              child:
                  isLocked
                      ? const Icon(Icons.lock, size: 32, color: Colors.black54)
                      : Image.asset(imagePath, height: 32),
            ),
            if (!isLocked)
              const Positioned(
                bottom: 0,
                right: 0,
                child: Icon(Icons.emoji_events, color: Colors.amber, size: 18),
              ),
          ],
        ),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}
