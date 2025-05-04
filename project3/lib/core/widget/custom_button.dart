import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.color,
    this.shape,
    this.size,
  });

  final VoidCallback onPressed;
  final String text;
  final Color? color;
  final RoundedRectangleBorder? shape;
  final Size? size;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(color),
        shape: WidgetStateProperty.all(shape),
        fixedSize: WidgetStateProperty.all(size),
      ),

      child: Text(text),
    );
  }
}
