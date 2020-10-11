import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/colors.dart';
import 'package:print_pro_hashtag/custom_widget.dart';

class EditProfileBody extends StatefulWidget {
  @override
  _EditProfileBodyState createState() => _EditProfileBodyState();
}

class _EditProfileBodyState extends State<EditProfileBody> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      top : false ,
      bottom: true,
      child: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            Container (
              margin: EdgeInsets.only(top: 50.0 ),
              padding: EdgeInsets.only(left: 10.0 , right: 10.0 ),
              height: 80,
              width: screenWidth,
              child: Row (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton (
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon (Icons.arrow_back_ios,
                      color: Colors.blue,),
                  ),
                  Text (
                    'Edit Profile',
                    style: TextStyle (
                      color: Colors.black.withOpacity(0.5),
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                  IconButton (
                    icon: Icon (
                      Icons.person_add,
                      color: Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: inputTextField(
                        prefixIcon: Icons.person,
                        labelText: 'Name',
                        context: context,
                        hasSuffix: false,
                        isSecure: false,
                        input: TextInputType.name,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: inputTextField(
                        prefixIcon: Icons.email,
                        labelText: 'Email',
                        context: context,
                        hasSuffix: false,
                        isSecure: false,
                        input: TextInputType.name,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: inputTextField(
                        prefixIcon: Icons.phone,
                        labelText: 'Phone',
                        context: context,
                        hasSuffix: false,
                        isSecure: false,
                        input: TextInputType.name,
                      ),
                    ),
                    Container (
                      margin: EdgeInsets.only(top: 10),
                      height: 40,
                      decoration: BoxDecoration (
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: FlatButton (
                        onPressed: (){},
                        child: Text (
                          'Change Password',
                          style: TextStyle (
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container (
              height: 50,
              width: screenWidth,
              decoration: BoxDecoration (
                boxShadow: [
                  BoxShadow(
                    offset: Offset (1,1),
                    blurRadius: 2.0,
                    spreadRadius: 2.0,
                    color: Colors.white,
                  )
                ]
              ),
              child: FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ;
                      }));
                },
                color: Colors.blue,
                child: Text (
                  'Save',
                  style: TextStyle (
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
