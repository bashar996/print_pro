import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/cart/cart_item.dart';
import 'package:print_pro_hashtag/my_orders/order_item.dart';
import 'package:print_pro_hashtag/repositories/product_repository.dart';

class CartList extends StatefulWidget {
  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  List<ProductRepository> products = [
    ProductRepository(
      name: 'product 1',
      description: 'product 1',
      image: 'print3',
      price: '\$20',
    ),
    ProductRepository(
      name: 'product',
      description: 'product 1',
      image: 'p1',
      price: 'product 1',
    ),
    ProductRepository(
      name: 'product',
      description: 'product 1',
      image: 'p2',
      price: '\$20',
    ),
    ProductRepository(
      name: 'product 1',
      description: 'product 1',
      image: 'print1',
      price: '\$20',
    ),
    ProductRepository(
      name: 'product 1',
      description: 'product 1',
      image: 'print2',
      price: '\$20',
    ),
    ProductRepository(
      name: 'product 2',
      description: 'product 2',
      image: 'print3',
      price: '\$20',
    ),
    ProductRepository(
      name: 'product 1',
      description: 'product 1',
      image: 'p2',
      price: '\$20',
    ),
    ProductRepository(
      name: 'product 1',
      description: 'product 1',
      image: 'print2',
      price: '\$20',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: products.map((ProductRepository product) {
          return CartItem(
            product: product,
          );
        }).toList(),
      ),
    );
  }
}
