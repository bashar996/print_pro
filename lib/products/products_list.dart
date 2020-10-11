import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/products/product_item.dart';
import 'package:print_pro_hashtag/products/product_page.dart';
import 'package:print_pro_hashtag/repositories/product_repository.dart';

class ProductsList extends StatefulWidget {
  List <ProductRepository> products =
      [
        ProductRepository(
          name: 'product 1',
          description: 'product 1 product product product product product '
              'product product product product product product product product'
              ' product product product product product',
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
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count (
        padding: EdgeInsets.all(10),
        primary: true,
        shrinkWrap: true,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        scrollDirection: Axis.vertical,
        children: widget.products.map((ProductRepository value) {
          return InkWell (
            onTap:  (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ProductPage();
              }));
            },
            child: ProductItem(product: value,),
          );
        }).toList(),
      ),
    );
  }
}
