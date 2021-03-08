import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie/size_config.dart';

import '../../../constants.dart';

class SearchAndFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final InputBorder inputFieldBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      borderSide: BorderSide(color: kPrimaryColor),
    );

    return Container(
      width: double.infinity,
      height: 45,
      margin: EdgeInsets.only(top: kDefaultValue),
      padding: EdgeInsets.symmetric(horizontal: kDefaultValue),
      child: Row(
        children: [
          Expanded(
            flex: 8,
            child: TextField(
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 14.0),
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(kDefaultValue / 1.5),
                  child: SvgPicture.asset(
                    'assets/icons/search.svg',
                    color: kPrimaryColor,
                    width: getProportionateScreenWidth(12.0),
                  ),
                ),
                enabledBorder: inputFieldBorder,
                border: inputFieldBorder,
                hintText: 'Find for food or restaurant...',
                hintStyle: TextStyle(
                  color: kTextGrey,
                  fontSize:
                      MediaQuery.of(context).size.width > 500 ? 16.0 : 12.0,
                ),
                contentPadding: EdgeInsets.only(bottom: 0),
              ),
            ),
          ),
          SizedBox(width: kDefaultValue),
          Container(
            width: 60,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: kPrimaryColor,
            ),
            child: Center(
              child: Transform.rotate(
                angle: 1.6,
                child: SvgPicture.asset(
                  'assets/icons/option.svg',
                  width: 26,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
