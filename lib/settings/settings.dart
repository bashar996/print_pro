import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/Settings/body.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SettingsBody(),
    );
  }
}
