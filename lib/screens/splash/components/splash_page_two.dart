import 'package:flutter/material.dart';
import '../../../components/bullet_dots.dart';

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
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/map_placeholder.png'),
                  ),
                ),
                child: Icon(
                  Icons.room,
                  size: 50,
                  color: Colors.redAccent[400],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BulletPoints(
                    width: 12,
                    height: 12,
                    color: Theme.of(context).primaryColor),
                BulletPoints(
                    width: 15,
                    height: 15,
                    color: Theme.of(context).primaryColor),
                BulletPoints(width: 12, height: 12),
              ],
            ),
          )
        ],
      ),
    );
  }
}
