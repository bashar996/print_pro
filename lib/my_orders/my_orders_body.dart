import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/my_orders/orders_list.dart';

class MyOrdersBody extends StatefulWidget {
  @override
  _MyOrdersBodyState createState() => _MyOrdersBodyState();
}

class _MyOrdersBodyState extends State<MyOrdersBody> {

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      top: false,
      bottom: true,
      child: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50.0),
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              height: 40,
              width: screenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'My Orders',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.person_add,
                      color: Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left : 10.0 , right: 10),
                child: OrdersList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
