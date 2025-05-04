import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project3/core/text/app_text.dart';
import 'package:project3/core/text/text_styles.dart';
import 'package:project3/core/theme/app_palette.dart';

class UnitContainerWidget extends StatelessWidget {
  const UnitContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128.h,
      width: 211.w,
      decoration: BoxDecoration(
        color: AppPalette.unitColor,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppPalette.borderColor, width: 3),
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.h, left: 27.w, right: 27),
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                Text(
                  AppText.unit1,
                  style: TextStyles.roboto400.copyWith(fontSize: 20.sp),
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    SvgPicture.asset("asset/icons/crown.svg"),
                    Expanded(
                      child: LinearProgressIndicator(
                        minHeight: 14,
                        value: 0.1,
                        color: AppPalette.yellowColor,
                        backgroundColor: AppPalette.unProgressColor,
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(30),
                        ),
                      ),
                    ),
                    Text(
                      AppText.num,
                      style: TextStyles.roboto25.copyWith(
                        fontSize: 15.sp,
                        color: AppPalette.totalColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: -60.h,

              child: Image.asset(
                "asset/image/Horse.png",
                height: 98.h,
                width: 124.w,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
