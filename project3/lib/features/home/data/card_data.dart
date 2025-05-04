import 'package:project3/core/text/app_text.dart';
import 'package:project3/features/home/data/model/uint_card_model.dart';
import 'package:project3/features/home/data/model/unit_group_model.dart';

//Unit Group Model
List<UnitGroupModel> unitData = [
  UnitGroupModel(
    title: "Logical reasoning",
    crown: "asset/icons/crown.svg",
    totalCrowns: "18/40",
    unitCards: [
      UintCardModel(
        unit: AppText.unit1,
        svg: "asset/icons/crown.svg",
        progress: 0.4,
      ),
    ],
  ),
  UnitGroupModel(
    title: "Artistic thinking",
    crown: "asset/icons/crown.svg",
    totalCrowns: "35/40",
    unitCards: [
      UintCardModel(
        unit: AppText.unit1,
        svg: "asset/icons/crown.svg",
        progress: 0.6,
      ),
    ],
  ),
  UnitGroupModel(
    title: AppText.verbalSkills,
    crown: "asset/icons/crown.svg",
    totalCrowns: AppText.num,
    unitCards: [
      UintCardModel(
        unit: AppText.unit1,
        svg: "asset/icons/crown.svg",
        progress: 0.2,
      ),
    ],
  ),
];
