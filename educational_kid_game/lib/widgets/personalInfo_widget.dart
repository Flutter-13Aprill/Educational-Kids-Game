import 'package:flutter/material.dart';

class PersonalInfoWidget extends StatelessWidget {
  const PersonalInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nidhi Pandya",
                style: TextStyle(fontSize: 30, ),
              ),
              Text(
                "Nidhi12",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.access_time_filled_sharp,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                  SizedBox(width: 10),

                  Text("Joined March 2022", style: TextStyle(fontSize: 15)),
                ],
              ),
            ],
          ),
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/child.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
