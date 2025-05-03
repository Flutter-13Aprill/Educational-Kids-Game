import 'package:flutter/material.dart';

class PhaseTwo extends StatelessWidget {
  const PhaseTwo({super.key});

  Widget buildDecoratedCircle(String iconPath, String label, BuildContext context, {bool isLocked = false}) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (label == 'Intro' || label == 'Phrases' || label == 'Travel') {
              Navigator.pushNamed(context, '/profile');
            }
          },
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFFBEBEBE),
                ),
                child: Container(
                  padding: const EdgeInsets.all(0.5),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      color: Color(0xFF72BFC7),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: isLocked
                          ? const Icon(Icons.lock, color: Colors.grey, size: 30)
                          : Image.asset(iconPath, height: 30),
                    ),
                  ),
                ),
              ),

              
              Positioned(
                bottom: 4,
                right: 4,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/pic/crown.png',
                      height: 18,
                    ),
                    if (!isLocked)
                      const Text(
                        '1',
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

/*"It contains a set of elements displaying information related to study units,
as well as links to navigate to the Profile page when clicking on some of the elements.*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: Column(
        children: [
          const SizedBox(height: 92),
          Container(
            height: 54,
            width: double.infinity,
            color: const Color(0xFFD9D9D9),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Verbal Skills',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Image.asset('assets/pic/crown.png', height: 24),
                    const SizedBox(width: 4),
                    const Text(
                      '3',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFECC055)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset('assets/pic/diamond.png', height: 24),
                    const SizedBox(width: 4),
                    const Text(
                      '213',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF02A1FB)),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 45),
          Center(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 200,
                      height: 140,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: const Color.fromARGB(255, 182, 179, 179),
                            width: 1.5),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const SizedBox(height: 28),
                          const Text(
                            'Unit 1',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/pic/crown.png',
                                      height: 16),
                                  const SizedBox(width: 4),
                                  Container(
                                    width: 45,
                                    height: 6,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 189, 188, 188),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: FractionallySizedBox(
                                      alignment: Alignment.centerLeft,
                                      widthFactor: 0.25,
                                      child: Container(
                                        height: 6,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFECC055),
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                '3/40',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: -35,
                      left: 75,
                      child: Image.asset(
                        'assets/pic/horse.png',
                        height: 70,
                        width: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
        /*"When clicking on any circle named 'Intro', 'Phrases', or 'Travel',
         navigate to the Profile page.*/
                const SizedBox(height: 25),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildDecoratedCircle('assets/pic/pencil.png', 'Intro', context),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildDecoratedCircle('assets/pic/book.png', 'Phrases', context),
                        const SizedBox(width: 40),
                        buildDecoratedCircle('assets/pic/bike.png', 'Travel', context),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildDecoratedCircle('assets/pic/book.png', '', context, isLocked: true),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildDecoratedCircle('assets/pic/pencil.png', '', context, isLocked: true),
                        const SizedBox(width: 40),
                        buildDecoratedCircle('assets/pic/bike.png', '', context, isLocked: true),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
