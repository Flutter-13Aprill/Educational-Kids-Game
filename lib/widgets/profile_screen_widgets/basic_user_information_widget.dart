import 'package:flutter/material.dart';

class BasicUserInformationWidget extends StatelessWidget {
  const BasicUserInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nidhi Pandya',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),

              Text(
                'Nidhi12',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),

              SizedBox(height: 8),

              Row(
                spacing: 8,
                children: [
                  Icon(Icons.watch_later, color: Color.fromRGBO(0, 0, 0, 0.5)),
                  Text(
                    'Joined March 2022',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),

          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(
              'assets/images/profile_screen_images/nidhi_image.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
