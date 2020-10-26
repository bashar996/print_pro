import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/custom_widget.dart';

class ChangePasswordBody extends StatefulWidget {
  @override
  _ChangePasswordBodyState createState() => _ChangePasswordBodyState();
}

class _ChangePasswordBodyState extends State<ChangePasswordBody> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      top: false,
      bottom: true,
      child: Scaffold(
        body: Container(
          width: screenWidth,
          height: screenHeight,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  height: 80,
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
                        'Change Password',
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: inputTextField(
                    labelText: 'Current Passowrd',
                    context: context,
                    hasSuffix: true,
                    isSecure: false,
                    input: TextInputType.name,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: inputTextField(
                    labelText: 'New Passowrd',
                    context: context,
                    hasSuffix: true,
                    isSecure: false,
                    input: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: inputTextField(
                    labelText: 'Repeat Passowrd',
                    context: context,
                    hasSuffix: true,
                    isSecure: false,
                    input: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Save changes',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Text(
                          'Forgot Passowrd?',
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
