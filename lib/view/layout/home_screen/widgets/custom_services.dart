import 'package:fei_app/helper/model/custom_home_model.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomServices extends StatelessWidget {
  const CustomServices({super.key, required this.customHomeModel});
  final CustomHomeModel customHomeModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: const ShapeDecoration(
          color: AppColors.primaryColor, shape: CircleBorder()),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(customHomeModel.image),
        Text(
          customHomeModel.title,
          style: AppTextStyle.textStyle13medium,
        ),
      ]),
    );
  }
}
