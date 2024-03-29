import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class customSettingItem extends StatelessWidget {
  const customSettingItem({
    super.key,
    required this.image,
    required this.text,
    required this.ontap,
    required this.Scrren,
  });
  final String image;
  final String text;
  final Function ontap;
  final String Scrren;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            goToScreen(screenNames: Scrren);
          },
          child: Image.asset(
            image,
            color: AppColors.primaryColor,
          ),
        ),
        SizedBox(
          width: 15.w,
        ),
        InkWell(
          onTap: ontap(),
          child: Text(text,
              style: text == 'Delete account'
                  ? AppTextStyle.textStyle24medium.copyWith(color: Colors.red)
                  : AppTextStyle.textStyle24medium),
        ),
      ],
    );
  }
}
