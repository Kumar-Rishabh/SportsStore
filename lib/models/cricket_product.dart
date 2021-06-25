import 'package:flutter/material.dart';

import '../constant.dart';


class Cricket_Product{
  final String image,title,description;
  final int price,size,id;
  final Color color;
  Cricket_Product({
    this.image,
    this.id,
    this.price,
    this.description,
    this.color,
    this.title,
    this.size,
});
}

List<Cricket_Product> product=[
  Cricket_Product(
    id: 1,
    title: 'Bats',
    price: 1500,
    description: 'English willo bat',
    image: 'assets/images/bat.jpg',
    color: Color(0xFF3D82AE),
    size: 38,
  ),
  Cricket_Product(
      id: 2,
      title: 'Balls',
      price: 350,
      description: dummyText,
      image: 'assets/images/ball.jpg',
      color: Color(0xFF3D82AE),
    size: 22,
  ),
  Cricket_Product(
      id: 3,
      title: 'Stumps',
      price: 2000,
      description: dummyText,
      image: 'assets/images/stumps.jpg',
      color: Color(0xFF3D82AE),
    size: 28
  ),
  Cricket_Product(
      id: 4,
      title: 'Gloves',
      price: 450,
      description: dummyText,
      image: 'assets/images/gloves.jpg',
      color: Color(0xFF3D82AE),
    size: 6
  ),
  Cricket_Product(
      id: 5,
      title: 'Pads',
      price: 800,
      description: dummyText,
      image: 'assets/images/pads.jpg',
      color: Color(0xFF3D82AE),
    size: 38,
  ),
  Cricket_Product(
      id: 6,
      title: 'Helmet',
      price: 3000,
      description: dummyText,
      image: 'assets/images/helmet.jpg',
      color: Color(0xFF3D82AE),
    size: 60,
  ),

  Cricket_Product(
      id: 7,
      title: 'Elbow Guard',
      price: 1000,
      description: dummyText,
      image: 'assets/images/guard.jpg',
      color: Color(0xFF3D82AE),
    size: 25,
  ),
  Cricket_Product(
      id: 8,
      title: 'Shoes',
      price: 4000,
      description: dummyText,
      image: 'assets/images/shoes.jpg',
      color: Color(0xFF3D82AE),
    size: 8
  ),
];