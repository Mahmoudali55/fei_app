import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

class CustomPatientList extends StatelessWidget {
  const CustomPatientList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.w),
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      width: 190.w,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color(0xffDEEFFF)),
      child: Column(
        children: [
          Image.asset(
            AppImages.patient,
            width: 70.w,
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    AppWords.patientName.tr,
                    style: AppTextStyle.textStyle15bold,
                  ),
                  const Spacer(),
                  Image.asset(
                    AppImages.phone,
                    width: 15.w,
                    color: AppColors.textColor,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 15.w,
                  ),
                  Text(
                    AppWords.location.tr,
                    style: AppTextStyle.textStyle15bold
                        .copyWith(color: Colors.grey),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    AppWords.patientID.tr,
                    style: AppTextStyle.textStyle15bold
                        .copyWith(color: Colors.grey),
                  ),
                  const Spacer(),
                  Image.asset(
                    AppImages.message,
                    width: 15.w,
                    color: AppColors.textColor,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
