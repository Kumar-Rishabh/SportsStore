import 'package:flutter/material.dart';
import 'package:sports_store/Components/foot_item_card.dart';

import 'package:sports_store/Details/football_detail_screen.dart';
import 'package:sports_store/models/football_product.dart';

class Football_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Expanded(child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: GridView.builder(
            itemCount: product.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
            ),
            itemBuilder: (context,index)=> Football_ItemCard(
                product[index],
                    ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>FootballDetailScreen(product[index])))),
          ),
        ),
        ),

      ],
    );
  }
}