import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Remainder extends StatelessWidget {
  const Remainder({
    super.key,
    required this.isAccepted,
    required this.text,
  });

  final bool isAccepted;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        height: 53.h,
        width: 159.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            border: Border.all(
                color: isAccepted
                    ? AppColors.textColor
                    : AppColors.backgroundColor,
                width: .8)),
        child: Text(text,
            textAlign: TextAlign.center,
            style: isAccepted
                ? AppTextStyle.textStyle20bold
                : AppTextStyle.textStyle20bold
                    .copyWith(color: AppColors.backgroundColor)));
  }
}
