import 'package:flutter/material.dart';
import 'package:sports_store/models/other_product.dart';

import '../constant.dart';

class Other_ItemCard extends StatelessWidget {
  final Other_Product products;
  final Function press;
  Other_ItemCard(this.products,this.press);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top:10.0),
              padding: EdgeInsets.all(20.0),

              decoration: BoxDecoration(
                color: products.color,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Hero(
                  tag: '${products.id}',
                  child: Image.asset(products.image)),
            ),
          ),
          Text(
            products.title,
            style: TextStyle(
                color: ktextLightColor,
                fontSize: 20.0

            ),

          ),
          Text(
            '\R\s ${products.price}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    );


  }
}