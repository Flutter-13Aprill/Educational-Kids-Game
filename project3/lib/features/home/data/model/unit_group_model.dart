import 'package:project3/features/home/data/model/uint_card_model.dart';

class UnitGroupModel {
  final String title;
  final String crown;
  final String totalCrowns;
  final List<UintCardModel> unitCards;

  UnitGroupModel({
    required this.title,
    required this.crown,
    required this.totalCrowns,
    required this.unitCards,
  });
}
