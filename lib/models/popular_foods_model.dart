import 'package:flutter/material.dart';

class PopularFood {
  final String title, landmark, image, rating, overall;

  PopularFood({
    @required this.title,
    @required this.landmark,
    @required this.image,
    @required this.rating,
    @required this.overall,
  });
}

List<PopularFood> popularFoodsData = [
  PopularFood(
    title: 'Seafood Thalli',
    landmark: 'Aazhi Seafood',
    image: 'assets/icons/egg-plate.svg',
    rating: '2.4',
    overall: '50',
  ),
  PopularFood(
    title: 'Donut Delight',
    landmark: 'Rich N\' Cramy',
    image: 'assets/icons/donut.svg',
    rating: '4.2',
    overall: '100',
  ),
  PopularFood(
    title: 'Salad Mania',
    landmark: 'Mumbai Kulfi',
    image: 'assets/icons/salad.svg',
    rating: '3.4',
    overall: '32',
  ),
];
