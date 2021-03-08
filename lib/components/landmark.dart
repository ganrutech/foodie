import 'package:flutter/material.dart';

import '../constants.dart';

class LandMark extends StatelessWidget {
  const LandMark({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: kTextBlackLight,
            fontWeight: FontWeight.w300,
            fontSize: 12.0,
          ),
        ),
        SizedBox(width: 2),
        Icon(
          Icons.location_on,
          color: Colors.red,
          size: 14.0,
        ),
      ],
    );
  }
}
