import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_settings.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackButtonCustom extends StatelessWidget {
  const BackButtonCustom(
      {super.key, this.isGreen = false, this.isArrowWhite = false});
  final bool isGreen;

  final bool isArrowWhite;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        goBack();
      },
      child: SizedBox(
        width: 35.w,
        height: 35.h,
        child: Center(
          child: Icon(
            isArabic
                ? Icons.chevron_left_outlined
                : Icons.chevron_right_outlined,
            size: 40.spMax,
            color: isGreen
                ? const Color(0xff000000)
                : isArrowWhite
                    ? Colors.white
                    : AppColors.textColor,
          ),
        ),
      ),
    );
  }
}
