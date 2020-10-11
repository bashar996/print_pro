import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/repositories/product_repository.dart';


class OrderItem extends StatefulWidget {
  final ProductRepository product ;

  const OrderItem({Key key, this.product}) : super(key: key);
  @override
  _OrderItemState createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(10),
      height: 100,
      width: screenWidth * .8,
      decoration: BoxDecoration (
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow (
            offset: Offset (1,1),
            blurRadius: 2.0,
            spreadRadius: 2.0,
            color: Colors.grey.withOpacity(0.5),
          ),
        ],
      ),
      child: Row (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow (
                      offset: Offset (1,1),
                      blurRadius: 2.0,
                      spreadRadius: 2.0,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(5.0),
                child: ClipRRect (
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/${widget.product.image}.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top : 5.0 , left: 20 , bottom: 5),
                child: Column (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children : [
                    Text (
                      'Product',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text (
                      'Product',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text (
                      'Product',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text (
                      'Product',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container (
            width: 60,
            height: 100,
            child: FlatButton (
              color: Colors.blue,
              shape: RoundedRectangleBorder (
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: (){},
              child: Icon (
                Icons.info_outline,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
