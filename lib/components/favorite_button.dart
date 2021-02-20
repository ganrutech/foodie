import 'package:flutter/material.dart';

import '../constants.dart';

class FavoriteButton extends StatelessWidget {
  final bool isFav;

  const FavoriteButton({
    Key key,
    this.isFav = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black12,
          )
        ],
      ),
      child: Center(
        child: Icon(
          Icons.favorite,
          size: 20,
          color: isFav ? kPrimaryColor : kTextGrey,
        ),
      ),
    );
  }
}
