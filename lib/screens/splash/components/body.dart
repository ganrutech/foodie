import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'splash_page_one.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPageValue = 0;
  final PageController pageController =
      PageController(initialPage: 0, keepPage: true);

  void updatePage() {
    pageController.nextPage(
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight,
      child: PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            currentPageValue = value;
          });
        },
        children: [
          SplashPageOne(press: updatePage),
          Center(child: Text('Second Page')),
          Center(child: Text('Third Page')),
        ],
      ),
    );
  }
}
