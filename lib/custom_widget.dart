import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/colors.dart';

Container inputTextField(
    {BuildContext context,
    String labelText,
    IconData prefixIcon,
    bool hasSuffix,
    bool isSecure,
    TextInputType input}) {
  return Container(
    height: 60,
    width: MediaQuery.of(context).size.width * .9,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 1),
            color: Colors.grey.withOpacity(0.6),
            blurRadius: 1.5,
            spreadRadius: 1.5,
          ),
        ]),
    child: Center(
      child: TextField(
        keyboardType: input,
        obscureText: isSecure,
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            labelText: labelText,
            suffixIcon: hasSuffix
                ? Icon(
                    Icons.remove_red_eye,
                    color: kTextBlueColor,
                  )
                : Container(
                    width: 10,
                  ),
            prefixIcon: Icon(
              prefixIcon,
              size: 25,
              color: kTextBlueColor,
            )),
      ),
    ),
  );
}

Widget myRadioButton(
    {String title,
    int value,
    Function onChanged,
    int groupValue,
    BuildContext context}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 60,
    child: RadioListTile(
      activeColor: Colors.blue,
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      title: Text(title),
    ),
  );
}
