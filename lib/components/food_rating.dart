import 'package:flutter/material.dart';

import '../constants.dart';

class FoodRating extends StatelessWidget {
  const FoodRating({
    Key key,
    @required this.rating,
    @required this.overall,
  }) : super(key: key);

  final String rating, overall;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          rating,
          style: TextStyle(
            fontSize: 12,
            color: kTextBlack,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(width: 2.0),
        Icon(
          Icons.star,
          size: 14,
          color: kRatingYellow,
        ),
        SizedBox(width: 2.0),
        Text(
          '($overall+)',
          style: TextStyle(
            fontSize: 12,
            color: kTextBlack.withOpacity(0.8),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: 2.0),
      ],
    );
  }
}
