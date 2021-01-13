import 'package:flutter/material.dart';
import '../../../components/bullet_dots.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashPageOne extends StatelessWidget {
  final Function press;

  const SplashPageOne({Key key, @required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.clip,
      alignment: AlignmentDirectional.center,
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
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.7),
                ),
                SizedBox(height: 10),
                Text(
                  'People who love to eat are always \nthe best people',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 0.7,
                    color: Colors.white,
                    height: 1.2,
                  ),
                ),
                SizedBox(height: 50),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  onPressed: press,
                  textColor: Colors.black87,
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
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Align(
            widthFactor: 0.3,
            heightFactor: 1.1,
            child: Image.asset('assets/images/plate.png', width: 280),
          ),
        ),
        Positioned(
          bottom: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BulletPoints(width: 15, height: 15, color: kPrimaryLightColor),
              BulletPoints(width: 12, height: 12),
              BulletPoints(width: 12, height: 12),
            ],
          ),
        )
      ],
    );
  }
}
