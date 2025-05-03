import 'package:educational_kid_game/pages/skills_page.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.title,
    required this.lock,
    required this.point,
  });
  final bool lock;
  final String title;
  final double point;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (builder) => SkillsPage()),
        );
      },
      child: Container(
        width: 179,
        height: 227,
        padding: const EdgeInsets.only(left: 12, right: 12, top: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(196, 196, 196, 0.4),
        ),
        child: Column(
          mainAxisAlignment:
              lock ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
          children: [
            if (lock)
              Container(
                margin: const EdgeInsets.only(bottom: 19),
                height: 47,
                width: 59,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/lock.png"),
                  ),
                ),
              )
            else
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Title at the top
                    Align(
                      alignment: Alignment.center,
                      child: Text(title, style: const TextStyle(fontSize: 30)),
                    ),
                    // Row at the bottom
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 19),
                          height: 27,
                          width: 31,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Vector.png"),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 8),
                            width: 149,
                            height: 14,
                            
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topLeft: Radius.elliptical(8, 30),
                                
                              ),
                              child: LinearProgressIndicator(
                                
                                value: point.clamp(0.0, 1.0),
                                color: const Color.fromRGBO(236, 192, 85, 1),
                                backgroundColor: const Color.fromRGBO(
                                  196,
                                  196,
                                  196,
                                  1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
