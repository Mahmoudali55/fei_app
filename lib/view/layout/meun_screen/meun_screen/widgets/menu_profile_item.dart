import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class MenuProfileItem extends StatelessWidget {
  final String title;
  final String subTitle;

  const MenuProfileItem(
      {super.key, required this.title, required this.subTitle});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.textColor,
          radius: 32,
          child: CircleAvatar(
            backgroundColor: AppColors.backgroundColor,
            radius: 30,
            child: Image.asset(
              AppImages.profile,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
            child: ListTile(
          title: Text(
            title,
            style: AppTextStyle.textStyle22medium,
          ),
          subtitle: Text(
            subTitle,
            style: AppTextStyle.textStyle15medium
                .copyWith(color: const Color(0xff8B8E8E)),
          ),
        ))
      ],
    );
  }
}
