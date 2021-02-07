import 'package:flutter/material.dart';

import '../constants.dart';

class ContainerTitle extends StatelessWidget {
  const ContainerTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(top: kDefaultValue),
      padding: EdgeInsets.symmetric(horizontal: kDefaultValue),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
