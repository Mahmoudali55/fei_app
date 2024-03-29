import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MenuProfileItem extends StatelessWidget {
  final String title;
  final String subTitle;

  const MenuProfileItem(
      {super.key, required this.title, required this.subTitle});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.textColor,
            width: 2.5.w,
          ),
        ),
        child: CircleAvatar(
          backgroundColor: AppColors.backgroundColor,
          radius: 25.r,
          child: Image.asset(
            width: 20.w,
            AppImages.profile,
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: Text(
        title,
        style: AppTextStyle.textStyle20medium,
      ),
      subtitle: Text(
        subTitle,
        style: AppTextStyle.textStyle15medium
            .copyWith(color: const Color(0xff8B8E8E)),
      ),
    );
  }
}
