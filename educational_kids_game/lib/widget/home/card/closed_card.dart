import 'package:flutter/material.dart';

// ClosedCard widget, which represents a locked card with a lock image
class ClosedCard extends StatelessWidget {
  const ClosedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(196, 196, 196, 0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 227,
      width: 179,
      alignment: Alignment.center,
      child: Image.asset("images/lock.png", height: 59),
    );
  }
}
