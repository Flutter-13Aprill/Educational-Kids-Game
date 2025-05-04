import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project3/core/text/text_styles.dart';
import 'package:project3/core/theme/app_palette.dart';
import 'package:project3/core/widget/custom_container.dart';
import 'package:project3/core/widget/custom_svg_picture.dart';
import 'package:project3/features/home/presentation/widget/custom_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                      CustomSvgPicture(svg: 'asset/icons/fire.svg'),
                      Text(
                        "3",
                        style: TextStyles.roboto25.copyWith(
                          color: AppPalette.orangeColor,
                        ),
                      ),
                      SizedBox(width: 35.w),
                      CustomSvgPicture(svg: 'asset/icons/box.svg'),
                      Text(
                        "1432 XP",
                        style: TextStyles.roboto25.copyWith(
                          color: AppPalette.greenColor,
                        ),
                      ),
                      SizedBox(width: 35.w),
                      CustomSvgPicture(svg: 'asset/icons/heart.svg'),
                      CustomSvgPicture(svg: 'asset/icons/infinity.svg'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 30),
        child: Column(children: [Flexible(child: CustomListView())]),
      ),
    );
  }
}
