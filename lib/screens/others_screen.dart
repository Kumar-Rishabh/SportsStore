import 'package:flutter/material.dart';
import 'package:sports_store/Components/other_item_card.dart';
import 'package:sports_store/Details/other_detail_screen.dart';
import 'package:sports_store/models/other_product.dart';

class Others_Screen extends StatelessWidget {
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
            itemBuilder: (context,index)=> Other_ItemCard(
                product[index],
                    ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>OtherDetailScreen(product[index])))),
          ),
        ),
        ),

      ],
    );
  }
}