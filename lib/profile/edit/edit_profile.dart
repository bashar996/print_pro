import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/profile/edit/body.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: EditProfileBody(),
    );
  }
}
