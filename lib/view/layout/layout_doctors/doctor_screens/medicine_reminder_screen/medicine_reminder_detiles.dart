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
import 'package:get/get_connect/http/src/utils/utils.dart';

class Medicinereminderdetiles extends StatefulWidget {
  const Medicinereminderdetiles({super.key});

  @override
  State<Medicinereminderdetiles> createState() =>
      _MedicinereminderdetilesState();
}

class _MedicinereminderdetilesState extends State<Medicinereminderdetiles> {
  int count = 0;
  int countpage = 0;
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
          const SizedBox(
            height: 15,
          ),
          Wrap(direction: Axis.horizontal, children: [
            ...List.generate(
              3,
              (index) => Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 62.h,
                  width: 117.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border:
                          Border.all(color: AppColors.primaryColor, width: 1.5),
                      color: count == index
                          ? AppColors.primaryColor
                          : AppColors.backgroundColor,
                      borderRadius: BorderRadius.circular(12))),
            )
          ]),
          SizedBox(
            height: 50.h,
          ),
          CustomButton(
            onPress: () {
              setState(() {
                count + 1 == 3 ? count = 0 : count++;

                print(count);
              });
            },
            height: 62.h,
            width: 398.w,
            backgroundColor: AppColors.primaryColor,
            title: 'Take Medicine',
            style: AppTextStyle.textStyle20bold
                .copyWith(color: AppColors.backgroundColor),
          )
        ]),
      ),
    );
  }
}
