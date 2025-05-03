import 'package:educational_kid_game/widgets/cardAndPoint_widget.dart';
import 'package:educational_kid_game/widgets/iconWithText_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 75),
              width: 421,
              height: 71,
              color: Color.fromRGBO(229, 229, 229, 0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconwithtextWidget(
                    iconPath: 'assets/images/fire.png',
                    count: "3",
                    colorText: Color.fromRGBO(236, 192, 85, 1),
                    iconWidth: 31,
                    iconHigth: 27,
                  ),
                  IconwithtextWidget(
                    iconPath: 'assets/images/vec.png',
                    count: "1432 XP",
                    colorText: Color.fromRGBO(51, 143, 155, 1),
                    iconWidth: 31,
                    iconHigth: 27,
                  ),
                  IconwithtextWidget(
                    iconPath: 'assets/images/Heart.png',
                    count: "",
                    colorText: Color.fromRGBO(220, 63, 0, 1),
                    iconWidth: 70,
                    iconHigth: 70,
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView(
                children: [
                  CardandpointWidget(title: 'Logical reasoning', subTitle: 'Unit 1', value: 0.5, point: '18/40',),
                  CardandpointWidget(title: 'Artistic thinking', subTitle: 'Unit 1', value: 0.8, point: '35/40',),
                  CardandpointWidget(title: 'Verbal skills', subTitle: 'Unit 1', value: 0.2, point: '3/40',),
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
