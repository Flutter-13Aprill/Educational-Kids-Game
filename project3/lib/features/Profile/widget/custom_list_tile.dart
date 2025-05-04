import 'package:flutter/material.dart';
import 'package:project3/core/text/app_text.dart';
import 'package:project3/core/text/text_styles.dart';
import 'package:project3/core/theme/app_palette.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text(AppText.name, style: TextStyles.roboto400),
            subtitle: Text(AppText.userName2, style: TextStyles.roboto20),
            trailing: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image.asset('asset/image/profile.png'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.access_time_filled, color: AppPalette.grayColor),
              SizedBox(width: 5),
              Text(AppText.joined, style: TextStyles.roboto15),
            ],
          ),
        ],
      ),
    );
  }
}
