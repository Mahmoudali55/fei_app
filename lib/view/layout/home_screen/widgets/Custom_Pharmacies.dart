import 'package:fei_app/helper/model/custom_home_model.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPharmacies extends StatelessWidget {
  const CustomPharmacies({super.key, required this.customHomeModel});
  final CustomHomeModel customHomeModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 127.h,
      width: 127.w,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: AppColors.backgroundColor,
          border: Border.all(color: AppColors.primaryColor, width: 2),
          shape: BoxShape.rectangle),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.backgroundColor,
              border: Border.all(color: AppColors.hintColor, width: 3),
            ),
            child: Image.asset(customHomeModel.image, height: 74, width: 77)),
        Text(
          customHomeModel.title,
          style: AppTextStyle.textStyle13Semibold,
        ),
      ]),
    );
  }
}
