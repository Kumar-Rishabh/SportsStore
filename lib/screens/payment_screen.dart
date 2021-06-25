import 'package:flutter/material.dart';
import 'package:pay/pay.dart';
import 'package:provider/provider.dart';
import 'package:sports_store/Components/cart.dart';
class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    final _paymentItems = [
      PaymentItem(
        label: 'Total',
        amount: cart.totalAmount.toString(),
        status: PaymentItemStatus.final_price,
      )
    ];
    return Scaffold(
      backgroundColor: Colors.indigo,
        appBar: AppBar(

        title: Text(
        'Payment',
        style: TextStyle(fontSize: 30, color: Colors.white),
    ),
    ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GooglePayButton(
            paymentConfigurationAsset: 'gpay.json',
            paymentItems: _paymentItems,
            style: GooglePayButtonStyle.white,
            type: GooglePayButtonType.pay,
            width: 200.0,
            height: 150.0,
            margin: const EdgeInsets.only(top: 15.0),
            onPaymentResult: (data){
              print(data);
            },
            loadingIndicator: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}
