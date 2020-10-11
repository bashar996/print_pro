import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:print_pro_hashtag/colors.dart';
import 'package:print_pro_hashtag/custom_widget.dart';
import 'package:print_pro_hashtag/login/body.dart';

class RegisterBody extends StatefulWidget {
  @override
  _RegisterBodyState createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  String country = '';
  @override
  Widget build(BuildContext context) {
    var spacing = MediaQuery.of(context).size.height * .03;
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .4,
                          color: Colors.transparent,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .04,
                        ),
                        inputTextField(
                          prefixIcon: Icons.person,
                          labelText: 'Name',
                          context: context,
                          hasSuffix: false,
                          isSecure: false,
                          input: TextInputType.name,
                        ),
                        SizedBox(
                          height: spacing,
                        ),
                        inputTextField(
                          prefixIcon: Icons.email,
                          labelText: 'E-mail',
                          context: context,
                          hasSuffix: false,
                          isSecure: false,
                          input: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: spacing,
                        ),
                        inputTextField(
                          prefixIcon: Icons.phone,
                          labelText: 'Phone',
                          context: context,
                          hasSuffix: false,
                          isSecure: false,
                          input: TextInputType.phone,
                        ),
                        SizedBox(
                          height: spacing,
                        ),
                        inputTextField(
                          prefixIcon: Icons.remove_red_eye,
                          labelText: 'Password',
                          context: context,
                          hasSuffix: false,
                          isSecure: true,
                          input: TextInputType.text,
                        ),
                        SizedBox(
                          height: spacing,
                        ),
                        inputTextField(
                          prefixIcon: Icons.remove_red_eye,
                          labelText: 'Confirm Password',
                          context: context,
                          hasSuffix: false,
                          isSecure: true,
                          input: TextInputType.text,
                        ),
                        SizedBox(
                          height: spacing,
                        ),
                        Container(
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
                          child: Row (
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon (
                                Icons.location_city,
                                size: 25,
                                color: kTextBlueColor,),
                              SizedBox (width: 10,),
                              CountryCodePicker (
                                onChanged: (CountryCode code){
                                  setState(() {
                                    country = code.name;
                                  });
                                },
                              ),
                              SizedBox (width: 10,),
                              SizedBox (
                                child: Container (
                                  width: 2,
                                  height: 30,
                                  color: kTextBlueColor,
                                ),
                              ),
                              SizedBox (width: 10,),
                              Container (
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text (
                                  country,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle (
                                    color: kTextBlackColor,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: spacing,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 30),
                          height: 60,
                          width: MediaQuery.of(context).size.width * .9,
                          decoration: BoxDecoration(
                            color: kTextBlueColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .4,
                    color: Colors.white,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Text(
                          'Register',
                          style: GoogleFonts.montserrat(
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                            color: kTextBlackColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Stack(
                    children : [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.4,
                        color: Colors.transparent,
                        child: CustomPaint(
                          painter: ContainerPainter(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5.0 , 40 , 0 ,0),
                        child: IconButton (
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Icon (Icons.arrow_back_ios),
                          color: Colors.white,
                          iconSize: 30,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 70,
                    left: 30,
                    child: Image.asset(
                      'assets/logo.png',
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * .1,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
