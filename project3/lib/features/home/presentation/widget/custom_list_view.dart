import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project3/core/text/text_styles.dart';
import 'package:project3/core/theme/app_palette.dart';
import 'package:project3/features/home/data/card_data.dart';
import 'package:project3/features/home/presentation/widget/custom_card.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: unitData.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(top: 35.h),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    unitData[index].title,
                    style: TextStyles.roboto400.copyWith(fontSize: 35.sp),
                  ),
                  Spacer(),

                  Row(
                    children: [
                      SvgPicture.asset(unitData[index].crown),
                      SizedBox(width: 5.w),
                      Text(
                        unitData[index].totalCrowns,
                        style: TextStyles.roboto25.copyWith(
                          fontSize: 20.sp,
                          color: AppPalette.totalColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: SizedBox(
                  height: 225.h,
                  width: double.infinity,
                  child: Center(
                    child: CustomCard(
                      cards: unitData[index].unitCards,
                     groupTitle:unitData[index].title,),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
