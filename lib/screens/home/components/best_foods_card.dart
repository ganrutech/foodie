import 'package:flutter/material.dart';
import '../../../models/best_foods_model.dart';
import '../../../components/favorite_button.dart';
import '../../../components/landmark.dart';

import '../../../constants.dart';

class BestFoodsCard extends StatelessWidget {
  final BestFoods foods;

  const BestFoodsCard({
    Key key,
    @required this.foods,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: kDefaultValue),
      child: SizedBox(
        width: 180.0,
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
                      height: 120.0,
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
                  bottom: 15,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                        SizedBox(height: 2),
                        LandMark(text: foods.location)
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
