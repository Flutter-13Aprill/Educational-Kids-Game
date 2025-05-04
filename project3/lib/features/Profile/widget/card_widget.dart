import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project3/core/text/app_text.dart';
import 'package:project3/core/text/text_styles.dart';
import 'package:project3/core/theme/app_palette.dart';
import 'package:project3/core/widget/custom_button.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 378.w,
      height: 228.h,
      child: Card(
        color: AppPalette.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: AppPalette.borderColor),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset("asset/image/cat.png"),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${AppText.invite}\n\n",
                          style: TextStyles.roboto500.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        TextSpan(
                          text: AppText.free,
                          style: TextStyles.roboto500,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            CustomButton(
              onPressed: () {},
              text: AppText.friendBtn,
              color: AppPalette.blueColor2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              size: Size(321.w, 47.h),
            ),
          ],
        ),
      ),
    );
  }
}
