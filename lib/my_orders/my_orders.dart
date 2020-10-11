import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/my_orders/my_orders_body.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyOrdersBody(),
    );
  }
}
