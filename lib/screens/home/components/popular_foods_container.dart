import 'package:flutter/material.dart';
import 'package:foodie/models/popular_foods_model.dart';

import '../../../constants.dart';

import 'popular_food_card.dart';

class PopularFoodsContainer extends StatelessWidget {
  const PopularFoodsContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: kDefaultValue),
          ...List.generate(
              popularFoodsData.length,
              (index) => PopularFoodCard(
                    foodDetail: popularFoodsData[index],
                  )),
        ],
      ),
    );
  }
}
