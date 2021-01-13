import 'package:flutter/material.dart';

class BulletPoints extends StatelessWidget {
  const BulletPoints({
    Key key,
    @required this.width,
    @required this.height,
    this.color = Colors.black38,
  }) : super(key: key);

  final double width, height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
