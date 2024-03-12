import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/prescription_screen/widgets/custom_prescription_detilies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class PrescriptionScreen extends StatelessWidget {
  const PrescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
        body: Container(
      color: AppColors.primaryColor.withOpacity(0.15),
      child: Stack(children: [
        Center(
            child: Image.asset(
          AppImages.lungs,
          fit: BoxFit.fill,
          width: 340.w,
          color: Colors.grey.withOpacity(0.3),
        )),
        Align(
          alignment: Alignment.topRight,
          child: Column(
            children: [
              Container(
                  width: 270.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.secondaryColor.withOpacity(.4),
                        spreadRadius: 7,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      )
                    ],
                    color: AppColors.primaryColor,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(32.r)),
                  ),
                  child: Text(AppWords.prescription.tr,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.textStyle16medium
                          .copyWith(color: AppColors.backgroundColor))),
              SizedBox(height: 20.h),
              Text(
                AppWords.doctorsname.tr,
                style: AppTextStyle.textStyle16semiBold,
              ),
              SizedBox(height: 10.h),
              Text(AppWords.departmentname.tr,
                  style: AppTextStyle.textStyle14light)
            ],
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Image.asset(AppImages.logeprescription),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 115),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppWords.patientName.tr,
                      style: AppTextStyle.textStyle16semiBold,
                    ),
                    Text(
                      '25/02/2024',
                      style: AppTextStyle.textStyle16semiBold,
                    ),
                  ],
                ),
                const Divider(
                  color: AppColors.primaryColor,
                  thickness: 4,
                  height: 10,
                ),
                SizedBox(height: 50.h),
                CustomPrescriptionDetilies(
                  title: 'Heparin 30ml 30,000 USP Units',
                  subtitle: '2 times today',
                  image: AppImages.rememberme3,
                ),
                CustomPrescriptionDetilies(
                  title: 'Heparin 30ml 30,000 USP Units',
                  subtitle: '3 times today',
                  image: AppImages.rememberme2,
                ),
                CustomPrescriptionDetilies(
                  title: 'Heparin 30ml 30,000 USP Units',
                  subtitle: '3 times today',
                  image: AppImages.rememberme1,
                ),
                CustomPrescriptionDetilies(
                  title: 'Heparin 30ml 30,000 USP Units',
                  subtitle: '3 times today',
                  image: AppImages.rememberme3,
                ),
                CustomPrescriptionDetilies(
                  title: 'Heparin 30ml 30,000 USP Units',
                  subtitle: '3 times today',
                  image: AppImages.rememberme2,
                ),
                SizedBox(height: 50.h),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 100,
          left: 20,
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: 'Notes: ',
                style: AppTextStyle.textStyle16semiBold
                    .copyWith(color: AppColors.thirdColor)),
            TextSpan(
              text: 'Repeat the medication three times.',
              style: AppTextStyle.textStyle14light,
            )
          ])),
        ),
        Positioned(
            bottom: 5,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  height: 60.h,
                  width: 270.w,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(32.r)),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.secondaryColor.withOpacity(.4),
                          spreadRadius: 12,
                          blurRadius: 7,
                          offset: const Offset(0, 4),
                        )
                      ]),
                  child: Row(
                    children: [
                      Transform.rotate(
                        angle: 45 * 3.14159 / 90,
                        child: Image.asset(
                          AppImages.phone,
                          width: 20.w,
                          color: AppColors.textColor,
                        ),
                      ),
                      Text(
                        ' : 01078435622',
                        style: AppTextStyle.textStyle16semiBold
                            .copyWith(color: AppColors.backgroundColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 70.w),
                Image.asset(AppImages.scancode, width: 60.w),
              ],
            ))
      ]),
    ));
  }
}
