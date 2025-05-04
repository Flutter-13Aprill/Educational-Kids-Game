import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project3/core/text/text_styles.dart';
import 'package:project3/core/theme/app_palette.dart';
import 'package:project3/features/Challenges/data/card_data.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cardData.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: SizedBox(
            width: 378.w,
            height: 116.h,
            child: Card(
              color: AppPalette.backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: AppPalette.borderColor),
              ),
              child: Row(
                children: [
                  Image.asset(cardData[index].image),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cardData[index].title,
                          style: TextStyles.roboto500,
                        ),
                        Text(
                          cardData[index].description,
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
        );
      },
    );
  }
}
