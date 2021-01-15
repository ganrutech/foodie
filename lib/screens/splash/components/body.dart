import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/onboarding.dart';

import '../../../components/bullet_dots.dart';
import '../../../size_config.dart';
import 'splash_page_one.dart';
import 'splash_page_three.dart';
import 'splash_page_two.dart';

import '../../home/home_screen.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPageValue = 0;
  final PageController pageController =
      PageController(initialPage: 0, keepPage: true);

  void nextPageHandler() {
    pageController.nextPage(
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }

  void skipIntroHandler() {
    Provider.of<OnBoarding>(context, listen: false).visitedHandler();
    Navigator.pushReplacementNamed(context, HomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (value) {
              setState(() {
                currentPageValue = value;
              });
            },
            children: [
              SplashPageOne(press: nextPageHandler),
              SplashPageTwo(press: skipIntroHandler),
              SplashPageThree(press: skipIntroHandler),
            ],
          ),
          buildPagerDots(context)
        ],
      ),
    );
  }

  Widget buildPagerDots(BuildContext context) {
    return Positioned(
      bottom: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BulletPoints(
            width: currentPageValue == 0 ? 15 : 12,
            height: currentPageValue == 0 ? 15 : 12,
            color: currentPageValue >= 0
                ? Theme.of(context).primaryColor
                : Colors.black45,
          ),
          BulletPoints(
            width: currentPageValue == 1 ? 15 : 12,
            height: currentPageValue == 1 ? 15 : 12,
            color: currentPageValue >= 1
                ? Theme.of(context).primaryColor
                : Colors.black45,
          ),
          BulletPoints(
            width: currentPageValue == 2 ? 15 : 12,
            height: currentPageValue == 2 ? 15 : 12,
            color: currentPageValue == 2
                ? Theme.of(context).primaryColor
                : Colors.black45,
          ),
        ],
      ),
    );
  }
}
