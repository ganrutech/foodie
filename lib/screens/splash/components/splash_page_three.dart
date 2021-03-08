import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SplashPageThree extends StatelessWidget {
  final Function press;
  const SplashPageThree({Key key, @required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        clipBehavior: Clip.hardEdge,
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
                  SvgPicture.asset(
                    'assets/images/eating_together.svg',
                    height: 250,
                  ),
                  SizedBox(height: 50),
                  Container(
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: kSecondaryColor),
                      onPressed: press,
                      child: Container(
                        width: SizeConfig.screenWidth * 0.4,
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.restaurant,
                              color: kTextBlack,
                              size: 18.0,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Let\'s Eat',
                              style: TextStyle(
                                color: kTextBlack,
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
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
