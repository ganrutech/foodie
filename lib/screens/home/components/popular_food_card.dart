import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../models/popular_foods_model.dart';
import '../../../components/landmark.dart';
import '../../../components/food_rating.dart';

import '../../../constants.dart';

class PopularFoodCard extends StatelessWidget {
  const PopularFoodCard({
    Key key,
    @required this.foodDetail,
  }) : super(key: key);

  final PopularFood foodDetail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: kDefaultValue / 1.5, bottom: kDefaultValue / 2),
      child: SizedBox(
        width: 145,
        child: AspectRatio(
          aspectRatio: 0.85,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              AspectRatio(
                aspectRatio: 1.025,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kDefaultValue),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                      ),
                    ],
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                child: SvgPicture.asset(
                  foodDetail.image,
                  height: 85,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 20,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodDetail.title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5.0),
                      LandMark(
                        text: foodDetail.landmark,
                      ),
                      SizedBox(height: 8.0),
                      FoodRating(
                        rating: foodDetail.rating,
                        overall: foodDetail.overall,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
