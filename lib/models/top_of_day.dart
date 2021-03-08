import 'package:flutter/material.dart';
import '../constants.dart';

class TopOfDay {
  final String title, description, image;
  final color;

  TopOfDay(
      {@required this.title,
      @required this.description,
      @required this.image,
      this.color = kPrimaryColor});
}

List<TopOfDay> mealData = [
  TopOfDay(
      title: 'Discover',
      description: 'Best Breakfast of the day',
      image: 'assets/icons/breakfast.svg'),
  TopOfDay(
      title: 'Yummy!',
      description: 'Meal of the day',
      image: 'assets/icons/burrito.svg',
      color: Colors.orangeAccent),
];
