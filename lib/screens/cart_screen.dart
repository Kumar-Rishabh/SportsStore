import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sports_store/Components/cart.dart';
import 'package:sports_store/Components/cartpdt.dart';
import 'package:sports_store/Components/orders.dart';
import 'package:sports_store/screens/payment_screen.dart';


class CartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Cart',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (ctx, i) => CartPdt(
                    cart.items.values.toList()[i].id,
                    cart.items.keys.toList()[i],
                    cart.items.values.toList()[i].price,
                    cart.items.values.toList()[i].quantity,
                    cart.items.values.toList()[i].name,
                  cart.items.values.toList()[i].image,)),

          ),
          CheckoutButton(
            cart: cart,
          ),
        ],
      ),
    );
  }
}
class CheckoutButton extends StatefulWidget {
  final Cart cart;

  const CheckoutButton({@required this.cart});
  @override
  _CheckoutButtonState createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
          'Checkout',
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.blue,
        ),
      ),

      onPressed: widget.cart.totalAmount <= 0
          ? null
          : () async {
        await Provider.of<Orders>(context, listen: false).addOrder(
            widget.cart.items.values.toList(), widget.cart.totalAmount);
        widget.cart.clear();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PaymentScreen()),
        );
      },

    );
  }
}
