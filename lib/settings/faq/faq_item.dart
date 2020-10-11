import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/repositories/faq_repository.dart';

import '../../colors.dart';

class FAQItem extends StatefulWidget {
  final FAQRepository item;

  const FAQItem({Key key, this.item}) : super(key: key);
  @override
  _FAQItemState createState() => _FAQItemState();
}

class _FAQItemState extends State<FAQItem> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(10),
      width: screenWidth * .8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset (1,1),
            color: Colors.grey.withOpacity(0.6),
            blurRadius: 2.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child : Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text ('Q . ' + widget.item.question ,
            style: TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),),
          SizedBox(height: 10,),
          Container(
            width: screenWidth * .8,
            child: Text ('A . ' + widget.item.answer,
              maxLines: 7,
              style: TextStyle(
                  color: kTextBlackColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 15
              ),),
          ),
        ],
      ),
    );
  }
}
