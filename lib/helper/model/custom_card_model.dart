// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomCardModel {
  String image;
  String title;
  String subtitle;

  double rate;
  CustomCardModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.rate,
  });
}
