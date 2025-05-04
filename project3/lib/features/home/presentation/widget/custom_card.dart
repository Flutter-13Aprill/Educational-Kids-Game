import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project3/core/function/navigation.dart';
import 'package:project3/core/text/app_text.dart';
import 'package:project3/core/text/text_styles.dart';
import 'package:project3/core/theme/app_palette.dart';
import 'package:project3/features/Verbal%20skills/presentation/pages/verbal_page.dart';
import 'package:project3/features/home/data/model/uint_card_model.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required,
    required this.cards,
    required this.groupTitle,
  });
  final List<UintCardModel> cards;
  final String groupTitle;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 179.w,
        mainAxisSpacing: 8.h,
        crossAxisSpacing: 15.w,
        childAspectRatio: 179 / 227,
      ),

      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        bool isLocked = index % 2 == 1;
        return InkWell(
          onTap: () {
            if (groupTitle == AppText.verbalSkills &&
                cards[index].unit == AppText.unit1) {
              customPush(context, VerbalPage());
            }
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
              child:
                  isLocked
                      ? Center(
                        child: SvgPicture.asset("asset/icons/Locked.svg"),
                      )
                      : Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(cards[index].unit, style: TextStyles.roboto400),
                          Row(
                            children: [
                              SvgPicture.asset(cards[index].svg),
                              Expanded(
                                child: LinearProgressIndicator(
                                  minHeight: 14,
                                  value: cards[index].progress,
                                  color: AppPalette.yellowColor,
                                  backgroundColor: AppPalette.unProgressColor,
                                  borderRadius: BorderRadius.horizontal(
                                    right: Radius.circular(30),
                                  ),
                                ),
                              ),
                            ],
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
