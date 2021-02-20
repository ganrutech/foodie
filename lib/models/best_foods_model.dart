import 'package:flutter/material.dart';

class BestFoods {
  final String rName, dName, location, image;
  final bool isFav;

  BestFoods({
    @required this.rName,
    @required this.dName,
    @required this.location,
    @required this.image,
    this.isFav = false,
  });
}

List<BestFoods> bestFoods = [
  BestFoods(
    rName: 'Chennai Tiffen Centre',
    dName: 'Ghee Roast Cone Dosa',
    location: 'Chromepet',
    image: 'assets/images/dosa.png',
  ),
  BestFoods(
    rName: 'Domino\'s Tbm',
    dName: 'Farmvilla Veg Pizza',
    location: 'Tambaram Sanitorium',
    image: 'assets/images/pizza.png',
    isFav: true,
  ),
  BestFoods(
    rName: 'Star Biryani',
    dName: 'Chicken Biryani',
    location: 'LIC, Chennai',
    image: 'assets/images/biryani.png',
  ),
];
