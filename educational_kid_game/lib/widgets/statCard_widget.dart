import 'package:flutter/material.dart';

class StatcardWidget extends StatelessWidget {
  const StatcardWidget({
    super.key,
    required this.pathImage,
    required this.point,
    required this.title,
    required this.imagHeight,
    required this.imagWidth,
  });
  final String pathImage;
  final String title;
  final String point;
  final double imagHeight;
  final double imagWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 179,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),

        border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.2), width: 3),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10,top: 10),
            child: Image.asset(width: imagWidth, height: imagWidth, pathImage),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(point, style: TextStyle(fontSize: 20)),
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
          SizedBox(width: 21),
        ],
      ),
    );
  }
}
