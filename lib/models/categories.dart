import 'package:flutter/material.dart';
import '../constants.dart';

class Categories {
  final String icon, text;
  final Color color;

  Categories({
    @required this.icon,
    @required this.text,
    this.color,
  });
}

List<Categories> categories = [
  Categories(
    text: 'All',
    color: kPrimaryColor,
    icon: 'assets/icons/all.svg',
  ),
  Categories(
    text: 'Fast Food',
    icon: 'assets/icons/fast-food.svg',
  ),
  Categories(
    text: 'Indian',
    icon: 'assets/icons/indian.svg',
  ),
  Categories(
    text: 'Chinese',
    icon: 'assets/icons/chinese.svg',
  ),
  Categories(
    text: 'Snacks',
    icon: 'assets/icons/shawarma.svg',
  ),
];
