
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:print_pro_hashtag/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:print_pro_hashtag/custom_widget.dart';
import 'package:print_pro_hashtag/home_page/home_page.dart';
import 'package:print_pro_hashtag/register/register.dart';

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  bool _visible = false;


  @override
  Widget build(BuildContext context) {
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
                  SingleChildScrollView (
                    child: Column (
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .4,
                          color: Colors.transparent,
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * .07,),
                        inputTextField(
                          prefixIcon: Icons.person,
                          labelText: 'Name',
                          context: context,
                          hasSuffix: false,
                          isSecure: false,
                          input: TextInputType.name,
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * .05,),
                        inputTextField(
                          prefixIcon: Icons.remove_red_eye,
                          labelText: 'Password',
                          context: context,
                          hasSuffix: false,
                          isSecure: true,
                          input: TextInputType.text,
                        ),
                        Container (
                          margin: EdgeInsets.all(15),
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: InkWell (
                              child: Text (
                                'Forgot Password',
                                style: TextStyle (
                                  color: kTextBlueColor,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * .065,),
                        Container (
                          margin: EdgeInsets.only(bottom: 30),
                          height: 60,
                          width: MediaQuery.of(context).size.width * .9,
                          decoration: BoxDecoration (
                            color: kTextBlueColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: FlatButton (
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                            },
                            child: Text (
                              'Login',
                              style: TextStyle (
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Container (
                          child: Row (
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text (
                                'Don\'t have account yet .',
                                style: TextStyle (
                                  color: kTextBlackColor,
                                  fontSize: 15,
                                ),
                              ),
                              InkWell (
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Register())
                                  );
                                },
                                child: Text (
                                  ' Register',
                                  style: TextStyle (
                                    color: kTextBlueColor,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
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
                        child: Text (
                          'Login',
                          style: GoogleFonts.montserrat(
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                            color: kTextBlackColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.4,
                    color: Colors.transparent,
                    child: CustomPaint (painter: ContainerPainter(),),
                  ),
                  Positioned(
                    top : 70 ,
                    left: 30,
                    child: Image.asset('assets/logo.png',
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

class ContainerPainter extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = kTextBlueColor
      ..style = PaintingStyle.fill;

    final path = new Path()
      ..moveTo(size.width * .7 , 0)
      ..quadraticBezierTo(size.width,
          size.height * 0.4,
          size.width * 0.6,
          size.height * 0.5)
      ..quadraticBezierTo(size.width * 0.05 ,
          size.height * 0.6,
          size.width * .2,
          size.height)
      ..quadraticBezierTo(size.width * .1  ,
          size.height * .8,
          0,
          size.height)
      ..lineTo(0 , size.height)
      ..lineTo(0 , 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(ContainerPainter oldDelegate) => true;
}