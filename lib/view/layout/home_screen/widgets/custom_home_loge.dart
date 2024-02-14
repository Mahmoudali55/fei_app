import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

class CustomHomeLoge extends StatelessWidget {
  const CustomHomeLoge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40.h),
      height: 50.h,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          AppWords.logename.tr,
          style: AppTextStyle.textStyle40semiBold
              .copyWith(color: AppColors.primaryColor),
        ),
        SizedBox(width: 250.w),
        CircleAvatar(
            radius: 17.r,
            backgroundColor: AppColors.hintColor,
            child: const Icon(Icons.settings, color: AppColors.textColor)),
        SizedBox(
          width: 10.w,
        ),
        CircleAvatar(
            radius: 17.r,
            backgroundColor: AppColors.hintColor,
            child: const Icon(
              Icons.notifications,
              color: AppColors.textColor,
            )),
      ]),
    );
  }
}
