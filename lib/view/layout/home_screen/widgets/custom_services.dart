// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:fei_app/helper/model/custom_home_model.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';

class CustomServices extends StatelessWidget {
  const CustomServices({
    Key? key,
    required this.customHomeModel,
  }) : super(key: key);
  final CustomHomeModel customHomeModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: customHomeModel.onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.h),
        padding: const EdgeInsets.all(7),
        width: customHomeModel.width,
        decoration: const ShapeDecoration(
            color: AppColors.primaryColor, shape: CircleBorder()),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image.asset(
            customHomeModel.image,
            height: 40.h,
            width: 40.w,
          ),
          Text(
            customHomeModel.title,
            style: AppTextStyle.textStyle11medium,
            textAlign: TextAlign.center,
          ),
        ]),
      ),
    );
  }
}
