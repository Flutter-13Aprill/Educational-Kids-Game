import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project3/core/text/app_text.dart';
import 'package:project3/core/text/text_styles.dart';
import 'package:project3/core/theme/app_palette.dart';
import 'package:project3/core/widget/custom_container.dart';
import 'package:project3/core/widget/custom_svg_picture.dart';
import 'package:project3/features/Verbal%20skills/data/verbal_skills_data.dart';
import 'package:project3/features/Verbal%20skills/presentation/widget/skills_widget.dart';
import 'package:project3/features/Verbal%20skills/presentation/widget/unit_container_widget.dart';

class VerbalPage extends StatelessWidget {
  const VerbalPage({super.key});

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
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 21.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppText.verbalSkills, style: TextStyles.roboto400),
                      SizedBox(width: 15.w),
                      CustomSvgPicture(svg: 'asset/icons/crown.svg'),
                      Text(
                        " 3",
                        style: TextStyles.roboto25.copyWith(
                          color: AppPalette.orangeColor,
                        ),
                      ),
                      SizedBox(width: 9.w),
                      CustomSvgPicture(svg: 'asset/icons/Diamond.svg'),
                      Text(
                        "213",
                        style: TextStyles.roboto25.copyWith(
                          color: AppPalette.blueColor2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 58.h, bottom: 64.h),
            child: Column(
              children: [
                UnitContainerWidget(),

                SizedBox(height: 60),
                Center(child: SkillsWidget(model: skillsData[0])),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SkillsWidget(model: skillsData[1]),
                    SizedBox(width: 17),
                    SkillsWidget(model: skillsData[2]),
                  ],
                ),
                Center(child: SkillsWidget(model: skillsData[3])),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SkillsWidget(model: skillsData[3]),
                    SizedBox(width: 17),
                    SkillsWidget(model: skillsData[3]),
                  ],
                ),

                // SkillsWidget(model: ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
