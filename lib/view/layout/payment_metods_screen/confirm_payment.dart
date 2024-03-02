import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

Future<dynamic> confirmpayment(BuildContext context) {
  String formattedDate = DateFormat('dd/MM/yyyy').format(DateTime.now());
  DateTime now = DateTime.now();

  String formattedTime = DateFormat.Hms().format(now);
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SizedBox(
          height: 300.h,
          width: 450.w,
          child: Column(
            children: [
              Row(
                children: [
                  Text('Booking ID: 0712',
                      style: AppTextStyle.textStyle20semibold),
                  const Spacer(),
                  const Icon(Icons.edit, color: Colors.grey, size: 20),
                ],
              ),
              SizedBox(height: 20.h),
              Row(children: [
                Image.asset(
                  AppImages.doctors,
                  width: 50,
                  fit: BoxFit.fill,
                ),
                SizedBox(width: 10.w),
                Column(
                  children: [
                    Text(
                      AppWords.doctorsname.tr,
                      style: AppTextStyle.textStyle18medium,
                    ),
                    Text(AppWords.departmentname.tr,
                        style: AppTextStyle.textStyle16medium.copyWith(
                          color: Colors.grey,
                        )),
                    Text('${AppWords.price.tr}EGP',
                        style: AppTextStyle.textStyle18medium
                            .copyWith(color: AppColors.secondaryColor)),
                  ],
                ),
              ]),
              SizedBox(height: 20.h),
              Divider(
                color: AppColors.textColor.withOpacity(.5),
                thickness: 1,
                height: 2,
              ),
              Row(children: [
                Text(
                  'name',
                  style: AppTextStyle.textStyle18medium
                      .copyWith(color: Colors.grey),
                ),
                const Spacer(),
                Text('Ahmed Ali', style: AppTextStyle.textStyle18medium),
              ]),
              Row(children: [
                Text(
                  'date',
                  style: AppTextStyle.textStyle18medium
                      .copyWith(color: Colors.grey),
                ),
                const Spacer(),
                Text(' $formattedDate', style: AppTextStyle.textStyle18medium),
              ]),
              Row(children: [
                Text(
                  'time',
                  style: AppTextStyle.textStyle18medium
                      .copyWith(color: Colors.grey),
                ),
                const Spacer(),
                Text(formattedTime, style: AppTextStyle.textStyle18medium),
              ])
            ],
          ),
        ),
      );
    },
  );
}
