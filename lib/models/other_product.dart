import 'package:flutter/material.dart';

import '../constant.dart';


class Other_Product{
  final String image,title,description;
  final int price,size,id;
  final Color color;
  Other_Product({
    this.image,
    this.id,
    this.price,
    this.description,
    this.color,
    this.title,
    this.size,
  });
}

List<Other_Product> product=[
  Other_Product(
    id: 1,
    title: 'Hockey Stick',
    price: 1400,
    description: dummyText,
    image: 'assets/images/hockey.png',
    color: Color(0xFF680000),
    size: 14,
  ),
  Other_Product(
    id: 2,
    title: 'Hockey Ball',
    price: 850,
    description: dummyText,
    image: 'assets/images/hoc_ball.jpg',
    color: Color(0xFF680000),
    size: 10,
  ),
  Other_Product(
      id: 3,
      title: 'Golf Stick',
      price: 4500,
      description: dummyText,
      image: 'assets/images/golf.jpg',
      color: Color(0xFF680000),
      size: 8
  ),
  Other_Product(
      id: 4,
      title: 'Callway Golf Stick',
      price: 7000,
      description: dummyText,
      image: 'assets/images/golf_2.jpg',
      color: Color(0xFF680000),
      size: 9
  ),
  Other_Product(
      id: 5,
      title: 'Smith Machine',
      price: 15000,
      description: dummyText,
      image: 'assets/images/smith.jpg',
      color: Color(0xFF680000),
      size: 89
  ),
  Other_Product(
      id: 6,
      title: 'Smith Machine',
      price: 500,
      description: dummyText,
      image: 'assets/images/dumble.jpg',
      color: Color(0xFF680000),
      size: 10
  ),


];