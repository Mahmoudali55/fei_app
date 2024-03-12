import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/helper/utils/validator.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SechdualedSurgries extends StatelessWidget {
  const SechdualedSurgries({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: const BackButtonCustom(),
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        title: Text('Sechdualed Surgries', style: AppTextStyle.textStyle24bold),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Divider(),
          CustomTextField(
            hintText: 'Search',
            prefixIcon: AppImages.search,
            onTap: () {},
            height: 60.h,
            textFieldValidType: TextFieldValidatorType.Optional,
            inputType: TextInputType.text,
            fillColor: AppColors.hintColor,
            currentFocusNode: FocusNode(),
            nextFocusNode: FocusNode(),
          ),
          SizedBox(height: 15.h),
          Wrap(
            runSpacing: 15.h,
            children: [
              ...List.generate(
                  8,
                  (index) => Container(
                      width: 398.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border:
                            Border.all(color: AppColors.primaryColor, width: 1),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                              leading: Image.asset(AppImages.hospital),
                              title: Text(
                                'Al-mostaabl Hospital',
                                style: AppTextStyle.textStyle18medium,
                              ),
                              subtitle: Text(
                                AppWords.patientName.tr,
                                style: AppTextStyle.textStyle14light,
                              ),
                              trailing: Image.asset(
                                AppImages.phone,
                                width: 20,
                              )),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 10.w),
                              padding: EdgeInsets.symmetric(horizontal: 15.w),
                              height: 34.h,
                              width: 370.w,
                              color: const Color(0xffDEEFFF),
                              child: Row(children: [
                                Image.asset(
                                  AppImages.schedul,
                                  color: AppColors.textColor,
                                  width: 15,
                                ),
                                SizedBox(width: 10.w),
                                const Text(
                                  'Monday, 26 July',
                                ),
                                SizedBox(width: 10.w),
                                Container(
                                  height: 17,
                                  width: 1,
                                  color: AppColors.textColor,
                                ),
                                SizedBox(width: 10.w),
                                const Icon(Icons.timer,
                                    color: AppColors.textColor),
                                const Text('10:00 AM - 11:00 AM'),
                              ]))
                        ],
                      )))
            ],
          )
        ]),
      ),
    );
  }
}
