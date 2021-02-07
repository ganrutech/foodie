import 'package:flutter/material.dart';
import '../../../models/categories.dart';
import '../../../constants.dart';
import 'categories_card.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: kDefaultValue * 1.5),
          ...List.generate(
            categories.length,
            (index) => CaterogiesCard(
              categories: categories[index],
              index: index,
            ),
          ),
          SizedBox(width: kDefaultValue / 2),
        ],
      ),
    );
  }
}
