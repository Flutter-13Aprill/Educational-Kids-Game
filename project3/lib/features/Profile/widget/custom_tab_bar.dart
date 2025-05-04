import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project3/core/text/app_text.dart';
import 'package:project3/core/text/text_styles.dart';
import 'package:project3/core/theme/app_palette.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 26.w, vertical: 20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            TabBar(
              labelColor: AppPalette.blueColor2,
              indicatorColor: AppPalette.blueColor2,
              labelStyle: TextStyles.roboto15w600.copyWith(
                color: AppPalette.blueColor2,
              ),

              unselectedLabelStyle: TextStyles.roboto15w600,
              tabs: [
                Tab(text: AppText.following),
                Tab(text: AppText.followers),
              ],
            ),
            SizedBox(
              height: 156.h,
              child: TabBarView(
                children: [
                  ListView(
                    children: [
                      ListTile(
                        title: Text(
                          AppText.friendName,
                          style: TextStyles.roboto20.copyWith(
                            color: AppPalette.blackColor,
                          ),
                        ),
                        subtitle: Text(AppText.friendNum),
                        leading: CircleAvatar(
                          backgroundColor: AppPalette.purpleColor,
                          child: Text(
                            "H",
                            style: TextStyle(color: AppPalette.whiteColor),
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: AppPalette.borderColor,
                        ),
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          AppText.friendName2,
                          style: TextStyles.roboto20.copyWith(
                            color: AppPalette.blackColor,
                          ),
                        ),
                        subtitle: Text(AppText.friendNum2),
                        leading: CircleAvatar(
                          backgroundColor: AppPalette.pinkColor,
                          child: Text(
                            "K",
                            style: TextStyle(color: AppPalette.whiteColor),
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: AppPalette.borderColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
