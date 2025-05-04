import 'package:flutter/material.dart';
import 'package:project3/core/text/app_text.dart';
import 'package:project3/core/text/text_styles.dart';
import 'package:project3/core/theme/app_palette.dart';

class CustomTextColor extends StatelessWidget {
  CustomTextColor({super.key});

  final List<Color> colorText = [
    AppPalette.orangeColor,
    AppPalette.greenColor,
    AppPalette.purpleColor,
    AppPalette.blueColor,
    AppPalette.yellowColor,
  ];
  final text = AppText.up.split('');

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          ...text.asMap().entries.map((entry) {
            var letterIndex = entry.key;
            final letter = entry.value;

            while (letterIndex >= colorText.length) {
              if (letterIndex == colorText.length) {
                letterIndex = (letterIndex - colorText.length) + 1;
              } else {
                letterIndex -= colorText.length;
              }
            }

            return TextSpan(
              text: letter,
              style: TextStyles.ribeyeStyle.copyWith(
                color: colorText[letterIndex],
              ),
            );
          }),
        ],
      ),
    );
  }
}
