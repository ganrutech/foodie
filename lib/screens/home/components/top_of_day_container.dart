import 'package:flutter/material.dart';
import '../../../models/top_of_day.dart';

import '../../../constants.dart';
import 'top_of_day_card.dart';

class TopOfDayContainer extends StatelessWidget {
  const TopOfDayContainer({
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
            mealData.length,
            (index) => TopOfDayCard(
              topMeal: mealData[index],
            ),
          )
        ],
      ),
    );
  }
}
