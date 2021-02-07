import 'package:flutter/material.dart';
import '../../../size_config.dart';

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
          SizedBox(width: 20),
          ...List.generate(
            3,
            (index) => Padding(
              padding: const EdgeInsets.only(right: kDefaultValue / 2),
              child: SizedBox(
                width: SizeConfig.screenWidth * 0.52,
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
                              colors: [
                                Colors.black87.withOpacity(0.08),
                                Colors.black87.withOpacity(0.08),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
