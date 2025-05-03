import 'package:flutter/material.dart';

// -- Widget
import 'package:educational_kids_game_app/widgets/profile_screen_widgets/statistic_chip_widget.dart';
class StatisticsWidget extends StatelessWidget {
  const StatisticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        spacing: 16,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Statistics',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
            ),
          ),

          Row(
            spacing: 16,
            children: [
              StatisticChipWidget(
                statisticImagePath:
                    'assets/icons/profile_screen_icons/Vector.png',
                statisticName: '3',
                statisticDeception: 'Day Streak',
              ),
              StatisticChipWidget(
                statisticImagePath:
                    'assets/icons/profile_screen_icons/Vector (8).png',
                statisticName: '1432',
                statisticDeception: 'Total XP',
              ),
            ],
          ),

          Row(
            spacing: 16,
            children: [
              StatisticChipWidget(
                statisticImagePath:
                    'assets/icons/profile_screen_icons/noto_3rd-place-medal.png',
                statisticName: 'Bronze',
                statisticDeception: 'Current League',
              ),
              StatisticChipWidget(
                statisticImagePath:
                    'assets/icons/profile_screen_icons/bx_medal.png',
                statisticName: '0',
                statisticDeception: 'Top 3 Finishes',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
