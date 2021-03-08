import 'package:flutter/material.dart';
import 'package:foodie/models/featured_item_model.dart';

import '../../../components/favorite_button.dart';
import '../../../components/landmark.dart';
import '../../../constants.dart';

class FeaturedItemCard extends StatelessWidget {
  const FeaturedItemCard({
    Key key,
    @required this.foodItem,
  }) : super(key: key);

  final FeaturedItem foodItem;

  @override
  Widget build(BuildContext context) {
    var landmarkText = foodItem.landmark;
    if (landmarkText.length > 15) {
      landmarkText = landmarkText.substring(0, 15);
      landmarkText += "...";
    }
    return Padding(
      padding: const EdgeInsets.only(right: kDefaultValue),
      child: SizedBox(
        width: 180,
        child: AspectRatio(
          aspectRatio: 1.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(kDefaultValue / 2),
            child: Stack(
              children: [
                Container(
                  color: foodItem.color.withOpacity(0.20),
                  padding: EdgeInsets.fromLTRB(
                      kDefaultValue / 2, 5, kDefaultValue / 2, 5),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  foodItem.item,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 2.0),
                                Text(
                                  foodItem.shop,
                                  style: TextStyle(
                                    fontSize: 13.0,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 2.0),
                                LandMark(text: landmarkText),
                                SizedBox(height: 10.0),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(2, 2, 2, 3),
                          decoration: BoxDecoration(
                              color: foodItem.color.withOpacity(0.30),
                              borderRadius: BorderRadius.circular(100)),
                          child: Column(
                            children: [
                              FavoriteButton(),
                              Spacer(),
                              Container(
                                width: 30,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Center(
                                  child: RotatedBox(
                                    quarterTurns: 3,
                                    child: Text(
                                      foodItem.rating,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 5,
                  child: Image.network(
                    foodItem.image,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
