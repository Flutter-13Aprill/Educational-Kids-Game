import 'package:flutter/material.dart';

class IconwithtextWidget extends StatelessWidget {
  const IconwithtextWidget({super.key,required this.iconPath,required this.count,required this.colorText,required this.iconWidth,required this.iconHigth});
  final String iconPath;
  final String count;
  final double iconWidth;
  final double iconHigth;
  final Color colorText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        Container(
          margin: EdgeInsets.only(bottom: 5),
          height:iconHigth ,
          width: iconWidth,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(iconPath)),
          ),
        ),
        SizedBox(width: 14),

        Text(
          count,
          style: TextStyle(
            fontSize: 25,
            color:colorText,
          ),
        ),
      ],
    );
  }
}
