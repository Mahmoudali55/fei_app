import 'package:fei_app/helper/model/custom_reminder_model.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.reminder,
  });
  final ReminderModel reminder;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: reminder.onPress,
      child: Container(
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffF2EEEE),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  reminder.image,
                  height: 23,
                  width: 29,
                  color: AppColors.primaryColor,
                ),
                Text(
                  reminder.title,
                  style: AppTextStyle.textStyle16bold
                      .copyWith(color: AppColors.primaryColor),
                ),
                Text(
                  reminder.subtitle,
                  style: AppTextStyle.textStyle12bold
                      .copyWith(color: AppColors.textColor),
                ),
              ])),
    );
  }
}
