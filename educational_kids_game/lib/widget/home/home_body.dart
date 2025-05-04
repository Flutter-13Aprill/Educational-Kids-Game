import 'package:educational_kids_game/screen/details_screen.dart';
import 'package:educational_kids_game/widget/home/card/closed_card.dart';
import 'package:educational_kids_game/widget/home/card/open_card.dart';
import 'package:educational_kids_game/widget/home/home_bar.dart';
import 'package:educational_kids_game/widget/home/home_title.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // HomeBar: Displays the top bar with stats
        HomeBar(),
        SizedBox(height: 53),
        HomeTitle(title: "Logical reasoning", numCrown: 18),
        SizedBox(height: 9),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // OpenCard: User can interact with this card (leads to DetailsScreen)
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => DetailsScreen(
                          title: "Logical reasoning",
                          numCrown: 18,
                        ),
                  ),
                );
              },
              child: OpenCard(title: "Unit 1", val: 0.3),
            ),
            SizedBox(width: 10),
            ClosedCard(),
          ],
        ),
        SizedBox(height: 35),
        HomeTitle(title: "Artistic thinking", numCrown: 35),
        SizedBox(height: 9),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // OpenCard: User can interact with this card (leads to DetailsScreen)
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => DetailsScreen(
                          title: "Artistic thinking",
                          numCrown: 35,
                        ),
                  ),
                );
              },
              child: OpenCard(title: "Unit 1", val: 0.8),
            ),
            SizedBox(width: 10),
            ClosedCard(),
          ],
        ),
        SizedBox(height: 35),
        HomeTitle(title: "Verbal skills", numCrown: 3),
        SizedBox(height: 9),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // OpenCard: User can interact with this card (leads to DetailsScreen)
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) =>
                            DetailsScreen(title: "Verbal skills", numCrown: 3),
                  ),
                );
              },
              child: OpenCard(title: "Unit 1", val: 0.1),
            ),
            SizedBox(width: 10),
            ClosedCard(),
          ],
        ),
      ],
    );
  }
}
