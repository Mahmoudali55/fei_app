import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDescription extends StatelessWidget {
  const CustomDescription({
    super.key,
    required this.text,
    required this.suptext,
    required this.icon,
  });
  final String text;
  final String suptext;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      width: 113,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          border: Border.all(color: AppColors.primaryColor)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              Text(suptext),
            ],
          )
        ],
      ),
    );
  }
}
