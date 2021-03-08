import 'package:flutter/material.dart';

class FeaturedItem {
  final String item, shop, landmark, image, rating;
  final Color color;

  FeaturedItem({
    @required this.item,
    @required this.shop,
    @required this.landmark,
    @required this.image,
    @required this.rating,
    @required this.color,
  });
}

List<FeaturedItem> featuredData = [
  FeaturedItem(
      item: 'Royal Falooda',
      shop: 'Mumbai Kulfi',
      landmark: 'Hasthinapuram',
      image: 'https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c1b9.png',
      rating: '3.8',
      color: Color(0xFFFAA2C1)),
  FeaturedItem(
      item: 'Chicken Burger',
      shop: 'Burger King',
      landmark: 'Chrompet',
      image: 'https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c1a8.png',
      rating: '4.2',
      color: Color(0xFFFFEB3B)),
  FeaturedItem(
      item: 'Chicken Fries',
      shop: 'KFC',
      landmark: 'Tambaram',
      image: 'https://assets.stickpng.com/thumbs/580b57fbd9996e24bc43c0cc.png',
      rating: '3.1',
      color: Color(0xFF288666)),
];
