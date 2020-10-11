import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:print_pro_hashtag/notification/notification_item.dart';
import 'package:print_pro_hashtag/repositories/notification_repository.dart';

class NotificationBody extends StatefulWidget {
  @override
  _NotificationBodyState createState() => _NotificationBodyState();
}

class _NotificationBodyState extends State<NotificationBody> {
  List<NotificationRepository> notifications = [
    NotificationRepository(body: 'available new offers available new offers available available new offers available new offers available' , image: '' , title: 'Notification' ),
    NotificationRepository(body: 'new offers available' , image: '' , title: 'Notification' ),
    NotificationRepository(body: 'new offers available' , image: '' , title: 'Notification' ),
    NotificationRepository(body: 'new offers available' , image: '' , title: 'Notification' ),
    NotificationRepository(body: 'new offers available' , image: '' , title: 'Notification' ),
    NotificationRepository(body: 'new offers available' , image: '' , title: 'Notification' ),
  ];


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
            notifications.isEmpty ? Container (
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.7,
              child: SvgPicture.asset(
                  'assets/notification.svg',
              color: Colors.black.withOpacity(0.1),
              width: 100,
              height: 100,),
            ) : Expanded (
              child: ListView (
                children: notifications.map((NotificationRepository notification) {
                  return NotificationItem(notification: notification,);
                }).toList(),
              ),
            ),
          ]
      ),);
  }
}
