import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/colors.dart';
import 'package:print_pro_hashtag/repositories/product_repository.dart';


class ProductItem extends StatefulWidget {
  final ProductRepository product;

  const ProductItem({Key key, this.product}) : super(key: key);

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {

  double cartViewHeight = 50 ;
  double cartViewWidth = 50 ;
  bool bottomRadius = false;
  bool cartOpen = false;
  bool showPrice = true ;
  String cartButtonText = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 1),
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 2.0,
            blurRadius: 2.0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'assets/${widget.product.image}.png',
                width: (MediaQuery.of(context).size.width / 2) - 40,
                height: 130,
                // fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned (
            top: 0,
            left: 0,
            child: Container (
              width: (MediaQuery.of(context).size.width / 2) - 40,
              padding: EdgeInsets.only(top : 10 , left: 12),
              child: Text (
                'Product Product',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle (
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Positioned (
            bottom: 0,
            right: 0,
            child: AnimatedContainer(
              width: cartViewWidth,
              curve: Curves.easeInCubic,
              duration: Duration (milliseconds : 300),
              onEnd: (){
                setState(() {
                  cartOpen ? cartButtonText = 'Add To Cart' : cartButtonText = '';
                  cartOpen ? showPrice = false : showPrice = true;
                  // showPrice = !showPrice;
                });
              },
              child: Container (
                height: cartViewHeight,
                width: cartViewWidth,
                decoration: BoxDecoration (
                  color: kTextBlueColor,
                  borderRadius : BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.circular(10),
                    bottomLeft: bottomRadius ? Radius.circular(30) : Radius.circular(0),
                  ),
                  ),
                child: !cartOpen ? IconButton (
                  onPressed: (){
                    setState(() {
                      showPrice = false;
                      cartOpen = true;
                      bottomRadius = true;
                      cartViewWidth = (MediaQuery.of(context).size.width / 2) - 15;
                      cartViewHeight = 100;
                    });
                  },
                  icon: Icon (Icons.add_shopping_cart,
                  color: Colors.white,),
                ) : Center (
                  child: FlatButton (
                    padding: EdgeInsets.symmetric(horizontal: (cartViewWidth / 2) - 40 , vertical: (cartViewHeight / 2 ) - 10),
                    onPressed: (){
                      setState(() {
                        cartOpen = false;
                        bottomRadius = false;
                        cartViewWidth = 50;
                        cartViewHeight = 50;
                      });
                    },
                    child: Text (
                      cartButtonText,
                      style: TextStyle (
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                ),
            ),
            ),
          Positioned (
            bottom: 15,
            left: 25,
            child: showPrice ? Text (
              'From 18 SR',
              style: TextStyle (
                color: kTextBlackColor,
                fontWeight: FontWeight.w500,
              ),
            ) : Container (),
          ),
          // Positioned(
          //   bottom: 0,
          //   child: Container(
          //     padding: EdgeInsets.all(5),
          //     height: 60,
          //     width: (MediaQuery.of(context).size.width / 2) - 17,
          //     decoration: BoxDecoration(
          //         color: Colors.white.withOpacity(0.4),
          //         borderRadius: BorderRadius.circular(10),
          //         boxShadow: [
          //           BoxShadow(
          //             offset: Offset(1, 1),
          //             color: Colors.grey.withOpacity(0.5),
          //             spreadRadius: 2.0,
          //             blurRadius: 2.0,
          //           ),
          //         ]),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Column(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Text(
          //               'Product',
          //               overflow: TextOverflow.ellipsis,
          //               style: TextStyle(
          //                   color: Colors.white,
          //                   fontWeight: FontWeight.bold,
          //                   fontSize: 17,
          //                   shadows: [
          //                     Shadow(
          //                       color: Colors.black,
          //                       blurRadius: 5.0,
          //                       offset: Offset(1.5, 1.5),
          //                     ),
          //                   ]),
          //             ),
          //             Text(
          //               'from 10 SR',
          //               style: TextStyle(
          //                   color: Colors.black,
          //                   fontWeight: FontWeight.bold,
          //                   shadows: [
          //                     Shadow(
          //                       color: Colors.black45,
          //                       blurRadius: 5.0,
          //                       offset: Offset(1.5, 1.5),
          //                     ),
          //                   ]),
          //             ),
          //           ],
          //         ),
          //         IconButton(
          //           padding: EdgeInsets.zero,
          //           icon: Icon(
          //             Icons.favorite_border,
          //             color: kTextBlueColor,
          //           ),
          //         )
          //       ],
          //     ),
          //     // child: Column(
          //     //   mainAxisAlignment: MainAxisAlignment.start,
          //     //   crossAxisAlignment: CrossAxisAlignment.start,
          //     //   children: [
          //     //     Container(
          //     //       height: 30,
          //     //       child: Row(
          //     //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     //         children: [
          //     //
          //     //
          //     //         ],
          //     //       ),
          //     //     ),
          //     //     Container(
          //     //       height: 20,
          //     //       child: Row(
          //     //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     //         children: [
          //     //
          //     //         ],
          //     //       ),
          //     //     ),
          //     //   ],
          //     // ),
          //   ),
          // )
        ],
      ),
    );
  }
}
