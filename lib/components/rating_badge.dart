import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';
import 'favorite_button.dart';

class RatingBadge extends StatelessWidget {
  const RatingBadge({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultValue),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: kDefaultValue * 4.2,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                ),
                child: Center(
                  child: Row(
                    children: [
                      SizedBox(width: 5.0),
                      Text(
                        '4.5',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 2.0),
                      Icon(
                        Icons.star,
                        size: 14,
                        color: Colors.yellow,
                      ),
                      SizedBox(width: 2.0),
                      Expanded(
                        child: Text(
                          '(50+)',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(width: 2.0),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          FavoriteButton(isFav: true)
        ],
      ),
    );
  }
}
