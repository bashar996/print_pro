import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/addresses/my_addresses.dart';
import 'package:print_pro_hashtag/colors.dart';
import 'package:print_pro_hashtag/my_orders/my_orders.dart';
import 'package:print_pro_hashtag/profile/edit/edit_profile.dart';

class ProfileBody extends StatefulWidget {
  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(top: 50),
      height: screenHeight,
      width: screenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFA6D5FF),
            Color(0xFF9EC0F8),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container (
              padding: EdgeInsets.only(left: 10.0 , right: 10.0),
              height: 80,
              width: screenWidth,
              child: Row (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton (
                    icon: Icon (Icons.arrow_drop_down,
                      color: Colors.transparent,),
                  ),
                  Image.asset('assets/logo.png',
                    width: 100,
                    height: 80,
                  ),
                  IconButton (
                    icon: Icon (
                      Icons.person_add,
                      color: Colors.transparent,
                      size: 30,),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Stack(
                  children :[
                    Container (
                      margin: EdgeInsets.all(30),
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow (
                              offset: Offset (1,1),
                              spreadRadius: 2.0,
                              blurRadius: 2.0,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ]
                      ),
                      child: Center (
                        child: CircleAvatar (
                          radius: 80,
                          backgroundColor: Colors.white,
                          child: Image.asset('assets/profile.png'),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 35,
                      top: 35,
                      child: Container (
                        // padding: EdgeInsets.only(left:  , bottom: 5 , right: 5 , top: 5),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration (
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Container (
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: IconButton (
                            onPressed: (){},
                            icon: Icon (Icons.mode_edit,
                            color: kTextBlueColor,),
                          ),
                        ),
                      ),
                    ),
                  ],

                ),
                Text (
                  'User name',
                  style: TextStyle (
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text (
                    'User name@gmail.com',
                    style: TextStyle (
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child : Container (
                  padding: EdgeInsets.only(top: 40),
                  child: Column (
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute (builder: (context){
                            return EditProfile();
                          }));
                        },
                        child: Container (
                          margin: EdgeInsets.only(left: 10 , right: 10 , top: 20),
                          height: 50,
                          width: MediaQuery.of(context).size.width * .8,
                          decoration: BoxDecoration (
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow (
                                  offset: Offset (1,1),
                                  blurRadius: 1.5,
                                  spreadRadius: 1.5,
                                  color: Colors.grey.withOpacity(0.3)
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text (
                              'Edit Profile Info',
                              style: TextStyle (
                                color: Colors.blue,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute (builder: (context){
                            return MyOrders();
                          }));
                        },
                        child: Container (
                          margin: EdgeInsets.only(left: 10 , right: 10 , top: 20),
                          height: 50,
                          width: MediaQuery.of(context).size.width * .8,
                          decoration: BoxDecoration (
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow (
                                  offset: Offset (1,1),
                                  blurRadius: 1.5,
                                  spreadRadius: 1.5,
                                  color: Colors.grey.withOpacity(0.3)
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text (
                              'My Orders',
                              style: TextStyle (
                                color: Colors.blue,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute (builder: (context){
                            return MyAddresses();
                          }));
                        },
                        child: Container (
                          margin: EdgeInsets.only(left: 10 , right: 10 , top: 20),
                          height: 50,
                          width: MediaQuery.of(context).size.width * .8,
                          decoration: BoxDecoration (
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow (
                                offset: Offset (1,1),
                                blurRadius: 1.5,
                                spreadRadius: 1.5,
                                color: Colors.grey.withOpacity(0.3)
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text (
                              'My Addresses',
                              style: TextStyle (
                                color: Colors.blue,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute (builder: (context){
                            return ;
                          }));
                        },
                        child: Container (
                          margin: EdgeInsets.only(left: 10 , right: 10 , top: 20),
                          height: 50,
                          width: MediaQuery.of(context).size.width * .8,
                          decoration: BoxDecoration (
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow (
                                  offset: Offset (1,1),
                                  blurRadius: 1.5,
                                  spreadRadius: 1.5,
                                  color: Colors.grey.withOpacity(0.3)
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text (
                              'Logout',
                              style: TextStyle (
                                color: Colors.blue,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]
      ),);
  }
}
