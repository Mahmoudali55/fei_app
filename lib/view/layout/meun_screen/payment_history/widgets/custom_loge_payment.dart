import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CumtomLogePayment extends StatelessWidget {
  const CumtomLogePayment({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Image.asset(image),
        title: Text(
          title,
          style: AppTextStyle.textStyle20bold,
        ),
        subtitle: Row(
          children: [
            Icon(Icons.location_on, color: AppColors.primaryColor),
            Text(AppWords.locationdoctor.tr,
                style: AppTextStyle.textStyle16light),
          ],
        ));
  }
}
