import 'package:flutter/material.dart';
import '../../../models/featured_item_model.dart';

import '../../../constants.dart';
import 'featured_item_card.dart';

class FeaturedContainer extends StatelessWidget {
  const FeaturedContainer({
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
            featuredData.length,
            (index) => FeaturedItemCard(
              foodItem: featuredData[index],
            ),
          )
        ],
      ),
    );
  }
}
