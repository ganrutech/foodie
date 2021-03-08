import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'best_foods_card.dart';

import '../../../models/best_foods_model.dart';

class BestFoodsNearYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: kDefaultValue,
          ),
          ...List.generate(
            bestFoods.length,
            (index) => BestFoodsCard(foods: bestFoods[index]),
          )
        ],
      ),
    );
  }
}
