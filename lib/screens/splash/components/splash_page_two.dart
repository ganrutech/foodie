import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../../constants.dart';

class SplashPageTwo extends StatelessWidget {
  final Function press;
  const SplashPageTwo({Key key, @required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
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
                'Find food \nin your area',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5.copyWith(
                      fontWeight: FontWeight.w600,
                      color: kTextBlack,
                      letterSpacing: 1.0,
                      height: 1.2,
                    ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
                width: SizeConfig.screenWidth * 0.8,
                height: SizeConfig.screenHeight * 0.60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/map_placeholder.png'),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 180,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              // color: Colors.red,
                              image: DecorationImage(
                                image: AssetImage('assets/images/plate.png'),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Home Cooking',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: getProportionateScreenWidth(12.0),
                                ),
                              ),
                              Row(
                                children: [
                                  ...List.generate(
                                    4,
                                    (index) => Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 10,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                'Opened',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: getProportionateScreenWidth(12.0),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.room,
                      size: 50,
                      color: Colors.redAccent[400],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
