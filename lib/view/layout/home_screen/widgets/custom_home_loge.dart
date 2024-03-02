import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

class CustomHomeLoge extends StatelessWidget {
  const CustomHomeLoge({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.h),
      height: 50.h,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(onTap: onTap, child: Image.asset(AppImages.menu)),
            SizedBox(width: 10.w),
            Text(
              AppWords.logename.tr,
              style: AppTextStyle.textStyle40semiBold
                  .copyWith(color: AppColors.primaryColor),
            ),
            const Spacer(),
            CircleAvatar(
                radius: 23.r,
                backgroundColor: AppColors.hintColor,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    InkWell(
                      onTap: () {
                        goToScreen(screenNames: ScreenNames.notificationScreen);
                      },
                      child: const Icon(
                        Icons.notifications,
                        color: AppColors.textColor,
                      ),
                    ),
                    Positioned(
                        left: 9.w,
                        top: 4.h,
                        child: Container(
                          width: 10.w,
                          height: 10.h,
                          decoration: const ShapeDecoration(
                              shape: CircleBorder(), color: Colors.red),
                        )),
                  ],
                )),
          ]),
    );
  }
}
