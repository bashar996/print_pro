import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:print_pro_hashtag/settings/about_us/about_us.dart';
import 'package:print_pro_hashtag/settings/contact_us/contact_us.dart';
import 'package:print_pro_hashtag/settings/setting_row_item.dart';
import 'package:flutter_share/flutter_share.dart';
import 'faq/faq.dart';

class SettingsBody extends StatefulWidget {
  @override
  _SettingsBodyState createState() => _SettingsBodyState();
}

class _SettingsBodyState extends State<SettingsBody> {
  String shareUrl = '';
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
            Color(0xFFA6D5EE),
            Color(0xFF9EC0F8),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
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
            SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenHeight * 0.08,),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute (builder: (context){
                            return FAQ();
                          }));
                        },
                        child: settingsRowItem(Icons.question_answer, 'FAQ')),
                    Divider (
                      indent: 20,
                      endIndent: 20,
                      color: Colors.white.withOpacity(0.6),
                      thickness: 0.5,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute (builder: (context){
                          return ContactUs();
                        }));
                      },
                        child: settingsRowItem(Icons.contact_phone, 'Contact Us'),
                    ),
                    Divider (
                      indent: 20,
                      endIndent: 20,
                      color: Colors.white.withOpacity(0.6),
                      thickness: 0.5,
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute (builder: (context){
                            return AboutUs();
                          }));
                        },
                        child: settingsRowItem(Icons.info_outline, 'About Us')),
                    Divider (
                      indent: 20,
                      endIndent: 20,
                      color: Colors.white.withOpacity(0.6),
                      thickness: 0.5,
                    ),
                    settingsRowItem(Icons.language, 'Language'),
                    Divider (
                      indent: 20,
                      endIndent: 20,
                      color: Colors.white.withOpacity(0.6),
                      thickness: 0.5,
                    ),
                    settingsRowItem(Icons.share, 'Share'),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(bottom : 10 , left: screenWidth * .15 , right: screenWidth * .15 , top : 10),
                      child: Row (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              FlutterShare.share(
                                  title: 'Share',
                                linkUrl: shareUrl,
                              );
                            },
                            child: SvgPicture.asset (
                              'assets/svg/linkedin.svg',
                              width: 35,
                              height: 35,
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              FlutterShare.share(
                                title: 'Share',
                                linkUrl: shareUrl,
                              );
                            },
                            child: SvgPicture.asset (
                              'assets/svg/whatsapp.svg',
                              width: 35,
                              height: 35,
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              FlutterShare.share(
                                title: 'Share',
                                linkUrl: shareUrl,
                              );
                            },
                            child: SvgPicture.asset (
                                  'assets/svg/instagram.svg',
                                  width: 35,
                                  height: 35,
                                ),
                          ),
                          InkWell(
                            onTap: (){
                              FlutterShare.share(
                                title: 'Share',
                                linkUrl: shareUrl,
                              );
                            },
                            child: SvgPicture.asset (
                              'assets/svg/twitter.svg',
                              width: 35,
                              height: 35,
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              FlutterShare.share(
                                title: 'Share',
                                linkUrl: shareUrl,
                              );
                            },
                            child: SvgPicture.asset (
                              'assets/svg/facebook.svg',
                              width: 35,
                              height: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
              ],
            ),
            ),
          ]
      ),);
  }
}
