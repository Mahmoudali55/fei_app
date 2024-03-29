import 'package:fei_app/helper/model/custom_reminder_model.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class CustomGridViewPlan extends StatelessWidget {
  const CustomGridViewPlan({
    super.key,
    required this.reminder,
  });
  final ReminderModel reminder;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: reminder.onPress,
      child: Container(
          margin: const EdgeInsets.only(top: 12, bottom: 12, left: 7, right: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffF2EEEE),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ListTile(
                  leading: Image.asset(
                    reminder.image,
                  ),
                  title:
                      Text(reminder.title, style: AppTextStyle.textStyle14bold),
                  subtitle: Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: AppColors.textColor,
                        size: 15,
                      ),
                      Text(
                        reminder.subtitle,
                        style: AppTextStyle.textStyle12bold
                            .copyWith(color: AppColors.textColor),
                      ),
                    ],
                  ),
                )
              ])),
    );
  }
}
