import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project3/core/text/app_text.dart';
import 'package:project3/core/text/text_styles.dart';
import 'package:project3/core/theme/app_palette.dart';
import 'package:project3/core/widget/custom_container.dart';
import 'package:project3/features/Challenges/widget/custom_card.dart';

class ChallengesPage extends StatelessWidget {
  const ChallengesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomContainer(
                child: Text(AppText.challenges, style: TextStyles.roboto400),
              ),
            ],
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.only(top: 31.h, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: AppPalette.backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: AppPalette.borderColor),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset("asset/image/Group.png"),
                    SizedBox(width: 18.w),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Complete 1000 word streak",
                            style: TextStyles.roboto500,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Win 1000XP along with 300 diamonds.",
                            style: TextStyles.roboto20.copyWith(
                              color: AppPalette.blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 31),
            Text("Achievements", style: TextStyles.roboto400),
            SizedBox(height: 31),
            Flexible(child: CustomCard()),
          ],
        ),
      ),
    );
  }
}
