import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../models/top_of_day.dart';

class TopOfDayCard extends StatelessWidget {
  const TopOfDayCard({
    Key key,
    @required this.topMeal,
  }) : super(key: key);

  final TopOfDay topMeal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kDefaultValue / 1.5),
      child: SizedBox(
        width: 310,
        child: AspectRatio(
          aspectRatio: 2.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(kDefaultValue / 1.5),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    topMeal.color,
                    topMeal.color.withOpacity(0.8),
                    topMeal.color.withOpacity(0.6)
                  ],
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: kDefaultValue),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            topMeal.title,
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            topMeal.description,
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                          ),
                          SizedBox(height: 10.0),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, kDefaultValue / 2,
                          kDefaultValue / 2, kDefaultValue / 2),
                      child: SvgPicture.asset(
                        topMeal.image,
                        height: 120,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
