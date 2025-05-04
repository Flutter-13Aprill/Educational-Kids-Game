import 'package:flutter/material.dart';

class VerbalBar extends StatelessWidget {
  const VerbalBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(229, 229, 229, 0.8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Label
          Text(
            'Verbal Skills',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          SizedBox(width: 8),

          // Crown icon + value
          Image.asset('assets/images/crown.png', width: 20, height: 20),
          SizedBox(width: 4),
          Text('3', style: TextStyle(fontSize: 14, color: Colors.black)),

          SizedBox(width: 12),

          // Diamond icon + value
          Image.asset('assets/images/diamond.png', width: 20, height: 20),
          SizedBox(width: 4),
          Text('213', style: TextStyle(fontSize: 14, color: Colors.black)),
        ],
      ),
    );
  }
}
