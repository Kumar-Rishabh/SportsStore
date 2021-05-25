import 'package:flutter/material.dart';

import '../constant.dart';


class Football_Product{
  final String image,title,description;
  final int price,size,id;
  final Color color;
  Football_Product({
    this.image,
    this.id,
    this.price,
    this.description,
    this.color,
    this.title,
    this.size,
  });
}

List<Football_Product> product=[
  Football_Product(
    id: 1,
    title: 'FootBalls',
    price: 1500,
    description: dummyText,
    image: 'assets/images/football.jpeg',
    color: Color(0xFF335B39),
    size: 38,
  ),
  Football_Product(
    id: 2,
    title: 'Shoes',
    price: 3500,
    description: dummyText,
    image: 'assets/images/fshoes.jpg',
    color: Color(0xFF335B39),
    size: 10,
  ),
  Football_Product(
      id: 3,
      title: 'Gloves',
      price: 1200,
      description: dummyText,
      image: 'assets/images/f_gloves.jpg',
      color: Color(0xFF335B39),
      size: 22
  ),
  Football_Product(
      id: 4,
      title: 'Shorts',
      price: 450,
      description: dummyText,
      image: 'assets/images/f_shorts.jpg',
      color: Color(0xFF335B39),
      size: 6
  ),
  Football_Product(
      id: 5,
      title: 'Socks',
      price: 450,
      description: dummyText,
      image: 'assets/images/socks.jpg',
      color: Color(0xFF335B39),
      size: 6
  ),
  Football_Product(
      id: 6,
      title: 'Football',
      price: 2500,
      description: dummyText,
      image: 'assets/images/fooot_2.jpg',
      color: Color(0xFF335B39),
      size: 6
  ),
  Football_Product(
      id: 7,
      title: 'Football Net',
      price: 1000,
      description: dummyText,
      image: 'assets/images/f_net.jpg',
      color: Color(0xFF335B39),
      size: 6
  ),

];