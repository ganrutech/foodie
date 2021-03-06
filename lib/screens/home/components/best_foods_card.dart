import 'package:flutter/material.dart';
import '../../../models/best_foods_model.dart';
import '../../../components/favorite_button.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class BestFoodsCard extends StatelessWidget {
  final BestFoods foods;

  const BestFoodsCard({
    Key key,
    @required this.foods,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: kDefaultValue / 2),
      child: SizedBox(
        width: SizeConfig.defaultSize * 20.5,
        child: AspectRatio(
            aspectRatio: 0.88,
            child: Stack(
              clipBehavior: Clip.hardEdge,
              alignment: Alignment.bottomCenter,
              children: [
                AspectRatio(
                  aspectRatio: 1.025,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.circular(kDefaultValue)),
                      color: kCardBgGrey,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Transform(
                    transform: Matrix4.skewY(-0.5),
                    origin: Offset(30, 100),
                    child: Container(
                      width: double.infinity,
                      height: kDefaultValue * 1.8,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      foods.image,
                      height: SizeConfig.defaultSize * 15,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 10,
                  child: FavoriteButton(isFav: foods.isFav),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          foods.dName,
                          style: TextStyle(
                            color: kTextBlackLight,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          foods.rName,
                          style: TextStyle(
                            color: kTextBlackLight,
                            fontSize: 14.0,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                              size: 14.0,
                            ),
                            SizedBox(width: 2),
                            Text(
                              foods.location,
                              style: TextStyle(
                                letterSpacing: -0.4,
                                color: kTextBlackLight,
                                fontWeight: FontWeight.w300,
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
