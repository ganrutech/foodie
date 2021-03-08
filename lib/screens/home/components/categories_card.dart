import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../models/categories.dart';

class CaterogiesCard extends StatelessWidget {
  const CaterogiesCard({
    Key key,
    @required this.categories,
    @required this.index,
  }) : super(key: key);

  final Categories categories;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.only(
              right: kDefaultValue / 2.5,
            ),
            decoration: BoxDecoration(
                color: index == 0 ? kPrimaryColor : Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(kDefaultValue / 2),
                ),
                border: index == 0
                    ? Border.all(color: kPrimaryColor, width: 0)
                    : Border.all(color: kTextBlackLight, width: 0.3)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (index == 0) SizedBox(height: 10),
                if (index > 0) SizedBox(height: 5),
                if (index == 0)
                  SvgPicture.asset(categories.icon,
                      color: Colors.white, width: 22),
                if (index == 0) SizedBox(height: 5),
                if (index > 0) SvgPicture.asset(categories.icon, width: 30),
                if (index > 0) SizedBox(height: 3),
                Text(
                  categories.text,
                  style: TextStyle(
                    color: index == 0 ? Colors.white : kTextBlackLight,
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ),
        if (index == 0)
          Positioned(
            right: 5,
            child: Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red[400],
              ),
              child: Center(
                  child: Icon(Icons.check, color: Colors.white, size: 10)),
            ),
          )
      ],
    );
  }
}
