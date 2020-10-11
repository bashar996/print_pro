import 'package:flutter/material.dart';

class CategoryRepository {
  final String title;
  bool isActive;
  final Function press;

  CategoryRepository({this.title, this.press , this.isActive});
}