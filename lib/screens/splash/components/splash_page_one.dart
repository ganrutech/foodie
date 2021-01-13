import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashPageOne extends StatelessWidget {
  final Function press;

  const SplashPageOne({Key key, @required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.clip,
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight * 0.84 -
                MediaQuery.of(context).padding.top,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
              ),
              color: Theme.of(context).primaryColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.fastfood, size: 80, color: kSecondaryColor),
                SizedBox(height: 30),
                Text(
                  'Welcome to Foodie',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  onPressed: press,
                  textColor: kTextBlack,
                  child: Container(
                    width: SizeConfig.screenWidth * 0.4,
                    padding: EdgeInsets.all(getProportionateScreenWidth(16.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Next',
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18.0),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: getProportionateScreenWidth(18.0),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: kPrimaryLightColor),
                ),
              ],
            ),
          ),
        ),
        Align(
          widthFactor: 0.3,
          heightFactor: 1.1,
          child: Image.asset('assets/images/plate.png', width: 280),
        ),
      ],
    );
  }
}
