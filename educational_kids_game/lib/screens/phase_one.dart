import 'package:flutter/material.dart';
import 'phase_two.dart';



class PhaseOne extends StatelessWidget {
  const PhaseOne({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double remainingHeight = screenHeight - 92 - 54 - 60;
    double boxHeight = (remainingHeight - 32) / 3;
    double reducedBoxHeight = boxHeight * 0.8;
    double boxWidth = screenWidth * 0.38;

    Widget buildUnitBox(String title, double progress) {
      return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PhaseTwo()),
          );
        },
        child: Container(
          width: boxWidth,
          height: reducedBoxHeight,
          decoration: BoxDecoration(
            color: const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                Center(
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Image.asset('assets/pic/crown.png', height: 14),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Container(
                        height: 6,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 189, 188, 188),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: FractionallySizedBox(
                          alignment: Alignment.centerLeft,
                          widthFactor: progress,
                          child: Container(
                            height: 6,
                            decoration: BoxDecoration(
                              color: const Color(0xFFECC055),
                              borderRadius: BorderRadius.circular(3),
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
        ),
      );
    }

    Widget buildLockedBox() {
      return Container(
        width: boxWidth,
        height: reducedBoxHeight,
        decoration: BoxDecoration(
          color: const Color(0xFFD9D9D9),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Icon(Icons.lock, color: Colors.grey, size: 28),
        ),
      );
    }

    /*"An interface displaying information about study units
    (such as 'Logical Reasoning', 'Artistic Thinking', and 'Verbal Skills')
     and allowing the user to navigate to PhaseTwo when clicking on one of the squares.*/
    return Scaffold(
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
                Image.asset('assets/pic/streak.png', height: 24),
                Row(
                  children: const [
                    Image(image: AssetImage('assets/pic/icon2.png'), height: 24),
                    SizedBox(width: 4),
                    Text('1432XP', style: TextStyle(fontSize: 10, color: Color.fromARGB(136, 64, 132, 99))),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.favorite, color: Color(0xFFDC3F00), size: 24),
                    SizedBox(width: 2),
                    Text('∞', style: TextStyle(fontSize: 12, color: Color(0xFFDC3F00))),
                  ],
                ),
              ],
            ),
          ),


          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Logical Reasoning', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    const Text('18/40', style: TextStyle(fontSize: 12, color: Colors.grey)),
                    const SizedBox(width: 4),
                    Image.asset('assets/pic/crown.png', height: 18),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildUnitBox('Unit 1', 0.25),
                buildLockedBox(),
              ],
            ),
          ),


          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Artistic Thinking', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    const Text('35/40', style: TextStyle(fontSize: 12, color: Colors.grey)),
                    const SizedBox(width: 4),
                    Image.asset('assets/pic/crown.png', height: 18),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildUnitBox('Unit 1', 0.75),
                buildLockedBox(),
              ],
            ),
          ),

          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Verbal Skills', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    const Text('5/40', style: TextStyle(fontSize: 12, color: Colors.grey)),
                    const SizedBox(width: 4),
                    Image.asset('assets/pic/crown.png', height: 18),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildUnitBox('Unit 1', 0.15),
                buildLockedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
