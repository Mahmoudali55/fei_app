import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomOnbourdingHome extends StatelessWidget {
  const CustomOnbourdingHome({
    super.key,
    required this.isActive,
  });
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? Container(
            margin: const EdgeInsets.all(1),
            width: 48,
            height: 12,
            decoration: const ShapeDecoration(
              color: AppColors.textColor,
              shape: CircleBorder(),
            ),
          )
        : Container(
            width: 12,
            height: 12,
            decoration: const ShapeDecoration(
              color: AppColors.hintColor,
              shape: CircleBorder(),
            ),
          );
  }
}
