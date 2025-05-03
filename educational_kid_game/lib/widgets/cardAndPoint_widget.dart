import 'package:educational_kid_game/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class CardandpointWidget extends StatelessWidget {
  const CardandpointWidget({super.key,required this.title,required this.subTitle,required this.value,required this.point});
  final String title;
  final String subTitle;
  final String point;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            SizedBox(width: 16),
            Image.asset(height: 27, width: 31, "assets/images/Vector.png"),
            Text(point, style: TextStyle(fontSize: 20)),
          ],
        ),
        SizedBox(height: 9),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardWidget(title:subTitle,point:value, lock: false),
            SizedBox(width: 20),

            CardWidget(title: "Unit 1", lock: true, point: 0),
          ],
        ),
      ],
    );
  }
}
