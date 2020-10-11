import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/repositories/product_repository.dart';
import 'package:print_pro_hashtag/search/search_item.dart';

import '../colors.dart';

class SearchBody extends StatefulWidget {
  @override
  _SearchBodyState createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  List <ProductRepository> products =
  [
    ProductRepository(
      name: 'Packages',
      description: 'product 1',
      image: 'print3',
      price: 'p2',
      rate: 'product 1',
    ),
    ProductRepository(
      name: 'Cards',
      description: 'product 1',
      image: 'p1',
      price: 'product 1',
      rate: 'product 1',
    ),
    ProductRepository(
      name: 'Packages',
      description: 'product 1',
      image: 'p2',
      price: 'product 1',
      rate: 'product 1',
    ),
    ProductRepository(
      name: 'Graphics',
      description: 'product 1',
      image: 'print1',
      price: 'product 1',
      rate: 'product 1',
    ),
    ProductRepository(
      name: 'Coloring',
      description: 'product 1',
      image: 'print2',
      price: 'product',
      rate: 'product 1',
    ),
    ProductRepository(
      name: 'Packages',
      description: 'product 1',
      image: 'print3',
      price: 'product 1',
      rate: 'product 1',
    ),
    ProductRepository(
      name: 'Office Card',
      description: 'product 1',
      image: 'p2',
      price: 'product 1',
      rate: 'product 1',
    ),
    ProductRepository(
      name: 'Painting',
      description: 'product 1',
      image: 'print2',
      price: 'product 1',
      rate: 'product 1',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      top: true,
      child: Container(
        width: screenWidth ,
        child : Column (
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton (
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon (Icons.arrow_back_ios,
              color: kTextBlueColor,),
            ),
            Container (
              margin: EdgeInsets.symmetric(horizontal : 20.0 , vertical: 10),
              height: 50,
              width: MediaQuery.of(context).size.width * .9,
              decoration: BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow (
                      offset: Offset (1,1),
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 1.5,
                      spreadRadius: 1.5,
                    ),
                  ]
              ),
              child: Container (
                width: MediaQuery.of(context).size.width * .9,
                child: TextField (
                  decoration: InputDecoration (
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText : 'Search for our products ...',
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: kTextBlueColor,)
                  ),
                ),
              ),
            ),
            Expanded (
              child: ListView (
                padding: EdgeInsets.all(10),
                children: products.map((ProductRepository product) {
                  return SearchItem(product: product,);
                }).toList(),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
