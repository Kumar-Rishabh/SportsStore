import 'package:flutter/material.dart';

import '../constant.dart';


class Badminton_Product{
  final String image,title,description;
  final int price,size,id;
  final Color color;
  Badminton_Product({
    this.image,
    this.id,
    this.price,
    this.description,
    this.color,
    this.title,
    this.size,
  });
}

List<Badminton_Product> product=[
  Badminton_Product(
    id: 1,
    title: 'Racket',
    price: 1500,
    description: dummyText,
    image: 'assets/images/rackets.jpg',
    color: Color(0xFFEBBA2E),
    size: 86,
  ),
  Badminton_Product(
    id: 2,
    title: 'Shuttle Cork',
    price: 250,
    description: dummyText,
    image: 'assets/images/cork.jpg',
    color: Color(0xFFEBBA2E),
    size: 10,
  ),
  Badminton_Product(
      id: 3,
      title: 'Cork set',
      price: 1200,
      description: dummyText,
      image: 'assets/images/cork_set.jpg',
      color: Color(0xFFEBBA2E),
      size: 8
  ),
  Badminton_Product(
      id: 4,
      title: 'Net',
      price: 3000,
      description: dummyText,
      image: 'assets/images/net.jpg',
      color: Color(0xFFEBBA2E),
      size: 6
  ),
  Badminton_Product(
      id: 5,
      title: 'Racket',
      price: 2200,
      description: dummyText,
      image: 'assets/images/rac_2.jpg',
      color: Color(0xFFEBBA2E),
      size: 89
  ),
  Badminton_Product(
      id: 6,
      title: 'Badminton set',
      price: 4500,
      description: dummyText,
      image: 'assets/images/bat_set.jpg',
      color: Color(0xFFEBBA2E),
      size: 6
  ),
  Badminton_Product(
      id: 7,
      title: 'Bag',
      price: 1000,
      description: dummyText,
      image: 'assets/images/bag.jpg',
      color: Color(0xFFEBBA2E),
      size: 6
  ),
  Badminton_Product(
      id: 8,
      title: 'Yonex Bag',
      price: 1500,
      description: dummyText,
      image: 'assets/images/bag_2.jpg',
      color: Color(0xFFEBBA2E),
      size: 7
  ),

];