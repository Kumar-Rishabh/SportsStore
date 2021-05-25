import 'package:flutter/material.dart';
import 'package:sports_store/Components/bad_item_card.dart';
import 'package:sports_store/Details/badminton_detail_screen.dart';
import 'package:sports_store/models/badminton_product.dart';

class Badminton_Screen extends StatelessWidget {
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
            itemBuilder: (context,index)=> badminton_ItemCard(
                product[index],
                    ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>badmintonDetailScreen(product[index])))),
          ),
        ),
        ),

      ],
    );
  }
}