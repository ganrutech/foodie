import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashPageThree extends StatelessWidget {
  final Function press;
  const SplashPageThree({Key key, @required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        overflow: Overflow.clip,
        alignment: AlignmentDirectional.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(20.0),
                child: GestureDetector(
                  child: Icon(Icons.close),
                  onTap: press,
                ),
              ),
              Text(
                'Plan your occassions',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5.copyWith(
                      fontWeight: FontWeight.w600,
                      color: kTextBlack,
                      letterSpacing: 1.0,
                      height: 1.2,
                    ),
              ),
            ],
          ),
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
                color: Theme.of(context).primaryColor.withOpacity(0.7),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/occassions.png'),
                  SizedBox(height: 50),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    textColor: Colors.black87,
                    onPressed: press,
                    child: Container(
                      width: SizeConfig.screenWidth * 0.4,
                      padding:
                          EdgeInsets.all(getProportionateScreenWidth(16.0)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.restaurant,
                            size: getProportionateScreenWidth(18.0),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Let\'s Eat',
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(18.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
