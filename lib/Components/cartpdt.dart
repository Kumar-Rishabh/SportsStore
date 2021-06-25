
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart.dart';


class CartPdt extends StatelessWidget {
  final String id;
  final String productId;
  final double price;
  final int quantity;
  final String name;
  final String image;
  CartPdt(this.id, this.productId, this.price, this.quantity, this.name,this.image);
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
      ),
      onDismissed: (direction) {
        Provider.of<Cart>(context, listen: false).removeItem(productId);
      },
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage(image),
          ),
          title: Text(name),
          subtitle: Text('Total: Rs.${(price * quantity)}'),
          trailing: Text('$quantity x'),
        ),
      ),
    );
  }
}