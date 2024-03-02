import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class DayShortcut extends StatelessWidget {
  final String day;

  const DayShortcut({Key? key, required this.day}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Text(
        day,
        style: AppTextStyle.textStyle14bold,
      ),
    );
  }
}
