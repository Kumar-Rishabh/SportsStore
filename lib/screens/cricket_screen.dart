import 'package:flutter/material.dart';
import 'package:sports_store/Components/cric_item_card.dart';
import 'package:sports_store/Details/cricket_details_screen.dart';
import 'package:sports_store/models/cricket_product.dart';

class Cricket_Screen extends StatelessWidget {
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
            itemBuilder: (context,index)=> Cricket_ItemCard(
                product[index],
                    ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>CricketDetailScreen(product[index])))),
          ),
        ),
        ),

      ],
    );
  }
}
