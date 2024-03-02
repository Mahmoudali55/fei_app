import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_settings.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomContactUs extends StatelessWidget {
  const CustomContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Text(
            AppWords.hlepme.tr,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              padding: const EdgeInsets.all(20),
              height: 600.h,
              width: 398.w,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryColor, width: 2),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isArabic ? 'مساعدة العملاء' : 'Customer Support',
                      style: AppTextStyle.textStyle22medium,
                    ),
                    ListTile(
                        leading: CircleAvatar(
                          radius: 22,
                          backgroundColor: AppColors.primaryColor,
                          child: Image.asset(
                            AppImages.phone,
                            color: AppColors.backgroundColor,
                          ),
                        ),
                        title: Text(
                          isArabic ? 'رقم الهاتف :' : 'Contact Number :',
                          style: AppTextStyle.textStyle18regular
                              .copyWith(color: Colors.grey),
                        ),
                        subtitle: Text(
                          '0123456789',
                          style: AppTextStyle.textStyle18regular
                              .copyWith(color: AppColors.textColor),
                        )),
                    ListTile(
                        leading: CircleAvatar(
                          radius: 22,
                          backgroundColor: AppColors.primaryColor,
                          child: Image.asset(
                            AppImages.email,
                            width: 23,
                            color: AppColors.backgroundColor,
                          ),
                        ),
                        title: Text(
                          isArabic ? 'البريد الإلكتروني :' : 'Email Address:',
                          style: AppTextStyle.textStyle18regular
                              .copyWith(color: Colors.grey),
                        ),
                        subtitle: Text(
                          'help@gmail.com',
                          style: AppTextStyle.textStyle18regular
                              .copyWith(color: AppColors.textColor),
                        )),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    Text(
                      isArabic ? 'مساعدة التواصل الاجتماعي' : 'Social Media',
                      style: AppTextStyle.textStyle22medium,
                    ),
                    ListTile(
                        leading: Image.asset(
                          AppImages.facebook,
                        ),
                        title: Text(
                          isArabic ? 'فيسبوك :' : 'Facebook ',
                          style: AppTextStyle.textStyle18regular
                              .copyWith(color: Colors.grey),
                        ),
                        subtitle: Text(
                          ' @Fei',
                          style: AppTextStyle.textStyle18regular
                              .copyWith(color: AppColors.textColor),
                        )),
                    ListTile(
                        leading: Image.asset(
                          AppImages.instagram,
                        ),
                        title: Text(
                          isArabic ? 'انستجرام :' : 'Instagram ',
                          style: AppTextStyle.textStyle18regular
                              .copyWith(color: Colors.grey),
                        ),
                        subtitle: Text(
                          ' @Fei',
                          style: AppTextStyle.textStyle18regular
                              .copyWith(color: AppColors.textColor),
                        )),
                    ListTile(
                        leading: Image.asset(
                          AppImages.x,
                        ),
                        title: Text(
                          isArabic ? 'تويتر :' : 'X ',
                          style: AppTextStyle.textStyle18regular
                              .copyWith(color: Colors.grey),
                        ),
                        subtitle: Text(
                          ' @Fei',
                          style: AppTextStyle.textStyle18regular
                              .copyWith(color: AppColors.textColor),
                        )),
                  ])),
        ]),
      ),
    );
  }
}
