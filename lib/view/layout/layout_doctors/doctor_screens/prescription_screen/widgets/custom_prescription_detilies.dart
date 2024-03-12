import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPrescriptionDetilies extends StatelessWidget {
  const CustomPrescriptionDetilies({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });
  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15.w,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.circle,
                color: AppColors.primaryColor,
                size: 20,
              ),
              Expanded(
                child: ListTile(
                    leading: Image.asset(
                      image,
                      color: Colors.grey,
                    ),
                    title: Text(
                      title,
                      style: AppTextStyle.textStyle15semiBold,
                    ),
                    subtitle:
                        Text(subtitle, style: AppTextStyle.textStyle16light)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
