import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class CustomOnbourdingPhrmacy extends StatelessWidget {
  const CustomOnbourdingPhrmacy({
    super.key,
    required this.isActive,
    required this.text,
  });
  final bool isActive;
  final String text;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? Container(
            margin: const EdgeInsets.all(4),
            width: 138,
            height: 42,
            decoration: ShapeDecoration(
              color: const Color(0xFF4DB297),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              textAlign: TextAlign.center,
              text,
              style: AppTextStyle.textStyle13bold
                  .copyWith(color: AppColors.backgroundColor),
            ),
          )
        : Container(
            margin: const EdgeInsets.all(4),
            width: 138,
            // height: 42,
            decoration: ShapeDecoration(
              color: AppColors.hintColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  text,
                  style: AppTextStyle.textStyle13bold,
                ),
              ],
            ),
          );
  }
}
