import 'package:flutter/material.dart';

import '../../../constants.dart';

class WelcomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: kPrimaryColor,
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(
              left: kDefaultValue,
              right: kDefaultValue,
              top: kDefaultValue / 2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(kDefaultValue * 2),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultValue / 2,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'How Hungry are you\nToday?',
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            height: 1.5,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Image.asset(
                      'assets/icons/cloudy.png',
                      width: kDefaultValue * 2,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
