import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project3/core/text/text_styles.dart';
import 'package:project3/core/theme/app_palette.dart';
import 'package:project3/core/widget/custom_svg_picture.dart';

class StatisticsWidget extends StatelessWidget {
  const StatisticsWidget({
    super.key,
    required this.svg,
    required this.title,
    required this.subTitle,
  });
  final String svg;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190.w,
      height: 71.h,
      margin: EdgeInsets.all(5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppPalette.borderColor, width: 3),
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyles.roboto20.copyWith(color: AppPalette.blackColor),
        ),
        subtitle: Text(
          subTitle,
          style: TextStyles.roboto20.copyWith(fontSize: 15),
        ),
        leading: CustomSvgPicture(svg: svg),
      ),
    );
  }
}
