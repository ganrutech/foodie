import 'package:flutter/material.dart';

import '../constants.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({
    Key key,
  }) : super(key: key);

  @override
  _CustomBottomNavState createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width / 4;
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: kTextBlackLight,
          blurRadius: 10.0,
          offset: Offset(0, 7),
        ),
      ]),
      child: Row(
        children: [
          buildNavContainer(size, Icons.explore, 0),
          buildNavContainer(size, Icons.store, 1),
          buildNavContainer(size, Icons.location_on, 2),
          buildNavContainer(size, Icons.favorite, 3),
        ],
      ),
    );
  }

  Widget buildNavContainer(double width, IconData icon, index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: width,
            height: 60,
            child: Icon(icon, color: kPrimaryColor, size: kDefaultValue * 1.3),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          if (_selectedItemIndex == index)
            Positioned(
              top: -5,
              child: Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.01)
                  ..rotateX(-0.6),
                alignment: FractionalOffset.center,
                child: Container(
                  width: width / 1.4,
                  height: 60,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        kPrimaryLightColor.withOpacity(0.6),
                        kPrimaryLightColor.withOpacity(0.1),
                        kPrimaryLightColor.withOpacity(0.1),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          if (_selectedItemIndex == index)
            Container(
              width: width / 1.7,
              height: 5,
              color: kPrimaryColor,
            ),
        ],
      ),
    );
  }
}
