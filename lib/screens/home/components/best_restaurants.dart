import 'package:flutter/material.dart';
import '../../../components/rating_badge.dart';

import '../../../constants.dart';

class BestRestaurant extends StatelessWidget {
  const BestRestaurant({
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
            8,
            (index) => BestRestaurantCard(),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}

class BestRestaurantCard extends StatelessWidget {
  const BestRestaurantCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kDefaultValue / 2),
      child: SizedBox(
        width: 210.0,
        child: AspectRatio(
          aspectRatio: 0.82,
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(kDefaultValue * 1.5),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/1624487/pexels-photo-1624487.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black87.withOpacity(0.1),
                        Colors.black87.withOpacity(0.1),
                        Colors.black87.withOpacity(0.3),
                        Colors.black87.withOpacity(0.8),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: RatingBadge(
                    rating: '4.0',
                    overall: '50',
                  ),
                ),
                Positioned(
                  bottom: 15,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultValue),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            RestaurantTags(text: 'Multicusian'),
                            RestaurantTags(text: 'Fast Food'),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Ambur Star Biriyani',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Friends were here',
                          style: TextStyle(
                            fontSize: 12,
                            color: kTextGrey,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RestaurantTags extends StatelessWidget {
  const RestaurantTags({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      padding: const EdgeInsets.symmetric(horizontal: kDefaultValue / 3),
      height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(kDefaultValue / 3),
        ),
        color: kBadgeColor,
      ),
      child: Center(
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 9,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
