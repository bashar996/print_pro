import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/cart/Cart_body.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: null,
        backgroundColor: Colors.blue,
        label: Text(
          'Proceed to Checkout',
          style: TextStyle(color: Colors.white),
        ),
        icon: Icon(
          Icons.account_balance_wallet,
          color: Colors.white,
        ),
      ),
      body: CartBody(),
    );
  }
}
