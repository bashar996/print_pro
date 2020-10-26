import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/settings/localization/localization_body.dart';

class LocalizationPage extends StatefulWidget {
  @override
  _LocalizationPage createState() => _LocalizationPage();
}

class _LocalizationPage extends State<LocalizationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LocalizationBody());
  }
}
