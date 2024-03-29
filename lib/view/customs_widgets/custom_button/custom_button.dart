import 'package:fei_app/helper/utils/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.title = '',
    this.onPress,
    this.titleFontSize = 16,
    this.titleFontColor = Colors.white,
    this.borderRadius = 16,
    this.backgroundColor = AppColors.primaryColor,
    this.borderColor = Colors.transparent,
    this.width = 380,
    this.height = 52,
    this.borderWidth = 1,
    this.style,
  });
  final String title;
  final double titleFontSize;
  final double width;
  final double borderWidth;
  final double height;
  final Color titleFontColor;
  final double borderRadius;
  final Function? onPress;
  final TextStyle? style;
  final Color backgroundColor, borderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            elevation: MaterialStateProperty.all(0),
            side: MaterialStateProperty.all(
                BorderSide(color: borderColor, width: borderWidth.r)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius.r)))),
        onPressed: onPress != null
            ? () {
                onPress!();
              }
            : null,
        child: Text(title, style: style),
      ),
    );
  }
}
