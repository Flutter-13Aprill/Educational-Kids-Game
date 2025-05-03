import 'package:flutter/material.dart';

class VerbalSkillsScreen extends StatelessWidget {
  const VerbalSkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ✅ Top Bar
              Container(
                height: 60,
                width: double.infinity,
                color: const Color.fromRGBO(229, 229, 229, 0.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Verbal skills',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/icons/Vector-2.png',
                            width: 24, height: 24),
                        const SizedBox(width: 4),
                        const Text("3", style: TextStyle(color: Colors.black)),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/icons/Vector-3.png',
                            width: 24, height: 24),
                        const SizedBox(width: 4),
                        const Text("213",
                            style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              //horse
              SizedBox(
                width: 211,
                height: 160,
                child: Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 40,
                      child: Container(
                        width: 211,
                        height: 128,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(233, 232, 232, 1),
                          borderRadius: BorderRadius.circular(20),
                          border:
                              Border.all(color: Colors.grey.shade400, width: 3),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Unit 1",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  Image.asset('assets/icons/Vector-2.png',
                                      width: 20, height: 20),
                                  const SizedBox(width: 6),
                                  Expanded(
                                    child: LinearProgressIndicator(
                                      value: 0.1,
                                      color: Colors.amber,
                                      backgroundColor: Colors.grey[300],
                                      minHeight: 6,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                    height: 8,
                                  ),
                                  const Text("3/40",
                                      style: TextStyle(fontSize: 12)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      child: Image.asset(
                        'assets/images/horuse.png',
                        width: 80,
                        height: 80,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              //circle
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildCircleUnit(
                          label: "Intro", imagePath: 'assets/images/pen.png'),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildCircleUnit(
                          label: "Phrases",
                          imagePath: 'assets/images/book.png'),
                      const SizedBox(width: 24),
                      buildCircleUnit(
                          label: "Travel",
                          imagePath: 'assets/images/bicecle.png'),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildLockedUnit(),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildLockedUnit(),
                      const SizedBox(width: 24),
                      buildLockedUnit(),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCircleUnit({required String label, required String imagePath}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 140,
          height: 140,
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color.fromRGBO(114, 191, 199, 1),
                  border: Border.all(
                    color: const Color.fromRGBO(196, 196, 196, 1),
                    width: 10,
                  ),
                ),
              ),
              Positioned(
                top: 30,
                child: Image.asset(imagePath, width: 90, height: 60),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('assets/icons/Vector-2.png',
                        width: 40, height: 40),
                    const Text("1",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 16)),
      ],
    );
  }

  Widget buildLockedUnit() {
    return SizedBox(
      width: 140,
      height: 140,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromRGBO(114, 191, 199, 1),
              border: Border.all(
                color: const Color.fromRGBO(196, 196, 196, 1),
                width: 10,
              ),
            ),
            child: const Icon(Icons.lock, size: 60, color: Colors.black54),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              'assets/icons/Vector-2.png',
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}
