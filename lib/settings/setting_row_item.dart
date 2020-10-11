import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/colors.dart';

Container settingsRowItem(IconData itemIcon , String title) {
  return Container(
    padding: EdgeInsets.all(20),
    child: InkWell(
      child: Row (
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon (
            itemIcon,
            color: Colors.lightBlue,
            size: 25,
          ),
          SizedBox (width: 20,),
          Text (
            title,
            style: TextStyle (
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: kTextBlackColor
            ),
          ),
        ],
      ),
    ),
  );
}
