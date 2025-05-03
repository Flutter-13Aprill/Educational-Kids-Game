import 'package:flutter/material.dart';

class StatisticChipWidget extends StatelessWidget {
  
  const StatisticChipWidget({super.key, required this.statisticImagePath, required this.statisticName, required this.statisticDeception});

  final String statisticImagePath;
  final String statisticName;
  final String statisticDeception;

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 186,
      height: 71,

      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.1), width: 3),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Column(
            children: [
              Image.asset(statisticImagePath),
              
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text(statisticName.toString(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
              Text(statisticDeception, style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4),fontSize: 14, fontWeight: FontWeight.w400))
            ],
          )
        ],
      ),
    );
  }
}