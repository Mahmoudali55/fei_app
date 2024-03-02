import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Medicinereminderdetiles extends StatelessWidget {
  const Medicinereminderdetiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const BackButtonCustom(),
          const SizedBox(height: 30),
          Row(
            children: [
              Image.asset(
                AppImages.mededicineReminder,
                height: 250,
              ),
              const SizedBox(
                width: 50,
              ),
              Column(children: [
                Text(
                  AppWords.pillName.tr,
                  style: AppTextStyle.textStyle20bold
                      .copyWith(color: const Color(0xff868686)),
                ),
                Text(
                  AppWords.anticoagulant.tr,
                  style: AppTextStyle.textStyle16bold
                      .copyWith(color: AppColors.primaryColor),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  AppWords.pillDosage.tr,
                  style: AppTextStyle.textStyle20bold
                      .copyWith(color: const Color(0xff868686)),
                ),
                Text(
                  '100 mg',
                  style: AppTextStyle.textStyle16bold
                      .copyWith(color: AppColors.primaryColor),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  AppWords.neastDose.tr,
                  style: AppTextStyle.textStyle20bold
                      .copyWith(color: const Color(0xff868686)),
                ),
                Text(
                  '5 pm',
                  style: AppTextStyle.textStyle16bold
                      .copyWith(color: AppColors.primaryColor),
                ),
              ])
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            AppWords.dose.tr,
            style: AppTextStyle.textStyle24bold,
          ),
          Text(
            '3 times | 9 am, 3pm & 9pm',
            style: AppTextStyle.textStyle16bold
                .copyWith(color: const Color(0xff868686)),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            AppWords.program.tr,
            style: AppTextStyle.textStyle24bold,
          ),
          Text(
            'Total 5 weeks | 2 weeks left',
            style: AppTextStyle.textStyle16bold
                .copyWith(color: const Color(0xff868686)),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            AppWords.quantity.tr,
            style: AppTextStyle.textStyle24bold,
          ),
          Text(
            'Total 156 capsules | 126 capsules left',
            style: AppTextStyle.textStyle16bold
                .copyWith(color: const Color(0xff868686)),
          ),
          SizedBox(
            height: 150.h,
          ),
          CustomButton(
            onPress: () {
              goBack();
            },
            height: 62.h,
            width: 398.w,
            backgroundColor: AppColors.primaryColor,
            title: AppWords.changeSchedual.tr,
            style: AppTextStyle.textStyle20bold
                .copyWith(color: AppColors.backgroundColor),
          )
        ]),
      ),
    );
  }
}
