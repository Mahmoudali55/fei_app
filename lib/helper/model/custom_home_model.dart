// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomHomeModel {
  String title;
  String image;
  double? height;
  void Function()? onTap;
  double width;
  BoxBorder border;
  CustomHomeModel({
    required this.title,
    required this.image,
    this.height,
    required this.width,
    required this.border,
    this.onTap,
  });
}
