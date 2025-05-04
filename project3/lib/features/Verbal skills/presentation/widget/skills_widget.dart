import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project3/core/text/text_styles.dart';
import 'package:project3/core/theme/app_palette.dart';
import 'package:project3/features/Verbal%20skills/data/model/verbal_skills_model.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key, required this.model});
  final VerbalSkillsModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: 140.h,
              width: 140,
              decoration: BoxDecoration(
                color: AppPalette.unProgressColor,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 110.h,
              width: 110,
              decoration: BoxDecoration(
                color: AppPalette.blueColor3,
                shape: BoxShape.circle,
                border: Border.all(color: AppPalette.whiteColor, width: 5),
              ),
              child:
                  model.img != null
                      ? Image.asset(model.img!)
                      : Center(
                        child: SvgPicture.asset(
                          model.svg2!,
                          width: 30,
                          height: 38,
                        ),
                      ),
            ),
            Positioned(
              right: 10,
              bottom: 10,

              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  SvgPicture.asset(model.svg),
                  Positioned(
                    right: 10.w,
                    bottom: 2.h,
                    child: Text(
                      textAlign: TextAlign.right,
                      model.num ?? '',
                      style: TextStyles.roboto25.copyWith(fontSize: 20.sp),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        Text(
          model.title ?? '',
          style: TextStyles.roboto25.copyWith(fontSize: 20.sp),
        ),
      ],
    );
  }
}
