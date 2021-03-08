import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../../providers/onboarding.dart';
import '../../../constants.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  String _selectedValue = 'Breakfast';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          color: Colors.white,
        ),
        Container(
          width: double.infinity,
          height: 50,
          padding: EdgeInsets.only(
            left: kDefaultValue,
            right: kDefaultValue / 3,
          ),
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(kDefaultValue * 2),
            ),
          ),
          child: Center(
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Provider.of<OnBoarding>(context, listen: false).logout();
                  },
                  child: Container(
                    child: SvgPicture.asset(
                      'assets/icons/menu.svg',
                      width: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: DropdownButton<String>(
                      elevation: 0,
                      value: _selectedValue,
                      dropdownColor: kPrimaryColor,
                      iconEnabledColor: Colors.white,
                      focusColor: kTextBlackLight,
                      isDense: true,
                      underline: Text(''),
                      items: <String>[
                        'Breakfast',
                        'Lunch',
                        'Snacks & Tea',
                        'Dinner'
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedValue = value;
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: kDefaultValue / 2),
                  child: Stack(
                    children: [
                      Container(
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(
                              Radius.circular(kDefaultValue / 3),
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/avatar.png',
                            fit: BoxFit.cover,
                            width: 2,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          transform: Matrix4.translationValues(0.0, -5.0, 0.0),
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red[400],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
