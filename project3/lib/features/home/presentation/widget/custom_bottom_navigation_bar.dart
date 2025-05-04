import 'package:flutter/material.dart';
import 'package:project3/core/widget/custom_svg_picture.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  final int selectedIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: CustomSvgPicture(svg: "asset/icons/home.svg"),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: CustomSvgPicture(svg: "asset/icons/target.svg"),
          label: "",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.group), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
      ],
    );
  }
}
