import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/my_orders/order_item.dart';
import 'package:print_pro_hashtag/repositories/product_repository.dart';

class OrdersList extends StatefulWidget {
  @override
  _OrdersListState createState() => _OrdersListState();
}

class _OrdersListState extends State<OrdersList> {
  List <ProductRepository> products =
  [
    ProductRepository(
      name: 'product 1',
      description: 'product 1',
      image: 'print3',
      price: 'p2',
      rate: 'product 1',
    ),
    ProductRepository(
      name: 'product',
      description: 'product 1',
      image: 'p1',
      price: 'product 1',
      rate: 'product 1',
    ),
    ProductRepository(
      name: 'product',
      description: 'product 1',
      image: 'p2',
      price: 'product 1',
      rate: 'product 1',
    ),
    ProductRepository(
      name: 'product 1',
      description: 'product 1',
      image: 'print1',
      price: 'product 1',
      rate: 'product 1',
    ),
    ProductRepository(
      name: 'product 1',
      description: 'product 1',
      image: 'print2',
      price: 'product',
      rate: 'product 1',
    ),
    ProductRepository(
      name: 'p2',
      description: 'product 1',
      image: 'print3',
      price: 'product 1',
      rate: 'product 1',
    ),
    ProductRepository(
      name: 'product 1',
      description: 'product 1',
      image: 'p2',
      price: 'product 1',
      rate: 'product 1',
    ),
    ProductRepository(
      name: 'product 1',
      description: 'product 1',
      image: 'print2',
      price: 'product 1',
      rate: 'product 1',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: products.map((ProductRepository product) {
          return OrderItem (product: product,);
        }).toList(),
      ),
    );
  }
}
