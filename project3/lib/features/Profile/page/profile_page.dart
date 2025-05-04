import 'package:flutter/material.dart';
import 'package:project3/core/text/app_text.dart';
import 'package:project3/core/text/text_styles.dart';
import 'package:project3/core/widget/custom_container.dart';
import 'package:project3/features/Profile/widget/button_widget.dart';
import 'package:project3/features/Profile/widget/card_widget.dart';
import 'package:project3/features/Profile/widget/custom_list_tile.dart';
import 'package:project3/features/Profile/widget/custom_tab_bar.dart';
import 'package:project3/features/Profile/widget/statistics_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
                child: Text(AppText.profile, style: TextStyles.roboto400),
              ),
            ],
          ),
        ),
      ),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CustomListTile(),
                Divider(thickness: 2),
                SizedBox(height: 16),
                ButtonWidget(),
                SizedBox(height: 45),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppText.statistics, style: TextStyles.roboto400),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        StatisticsWidget(
                          svg: 'asset/icons/fire.svg',
                          title: '3',
                          subTitle: 'Day Stra',
                        ),
                        StatisticsWidget(
                          title: '1432',
                          subTitle: 'Total XP',
                          svg: 'asset/icons/finder.svg',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        StatisticsWidget(
                          title: 'Bronze',
                          subTitle: 'Current League',
                          svg: 'asset/icons/bronze.svg',
                        ),
                        StatisticsWidget(
                          title: '0',
                          subTitle: 'Top 3 Finishes',
                          svg: 'asset/icons/Bronze2.svg',
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppText.friend, style: TextStyles.roboto400),
                      Text(AppText.addFriend, style: TextStyles.roboto600),
                    ],
                  ),
                ),
                CustomTabBar(),
                CardWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
