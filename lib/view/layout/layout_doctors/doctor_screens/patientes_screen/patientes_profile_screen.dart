import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PatientesProfileScreen extends StatelessWidget {
  const PatientesProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
              height: MediaQuery.of(context).size.height / 2.5,
              width: 390,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(155),
                ),
              ),
              child: Stack(children: [
                Positioned(
                  bottom: 60.h,
                  left: .87.sw,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.hintColor,
                        child: Image.asset(
                          AppImages.phone,
                          fit: BoxFit.fill,
                          height: 20,
                          color: AppColors.textColor,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.hintColor,
                        child: Image.asset(AppImages.message,
                            color: AppColors.textColor,
                            height: 20,
                            fit: BoxFit.fill),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.hintColor,
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 40,
                  child: Row(
                    children: [
                      const BackButtonCustom(
                        isArrowWhite: true,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        AppWords.patientName.tr,
                        style: AppTextStyle.textStyle24bold
                            .copyWith(color: AppColors.backgroundColor),
                      )
                    ],
                  ),
                ),
                Positioned(
                    bottom: 1,
                    //left: 20.w,
                    child: Row(
                      children: [
                        Image.asset(
                          AppImages.patineprofile,
                          height: 260.h,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                      ],
                    )),
              ])),
          SizedBox(
            height: 20.h,
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              //height: 572.h,
              width: 398.w,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16))),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'problem:',
                      style: AppTextStyle.textStyle20bold
                          .copyWith(color: Colors.red),
                    ),
                    const Icon(
                      Icons.edit,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const PatienteProfileDetiles(
                  problem: 'Chest pain.',
                ),
                const PatienteProfileDetiles(
                  problem: 'Increased breathing and heart rate.',
                ),
                const PatienteProfileDetiles(
                  problem: 'Hemoptysis.',
                ),
                const PatienteProfileDetiles(
                  problem: 'Cough.',
                ),
                const PatienteProfileDetiles(
                  problem: 'Bluish skin..',
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    AppWords.upCommingA.tr,
                    style: AppTextStyle.textStyle20semibold
                        .copyWith(color: AppColors.primaryColor),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(children: [
                  Text('Hospital Name', style: AppTextStyle.textStyle16light),
                  SizedBox(
                    width: 50.w,
                  ),
                  Text('Al-mostaabl Hospital',
                      style: AppTextStyle.textStyle16regular),
                ]),
                const SizedBox(
                  height: 10,
                ),
                Row(children: [
                  Text('Payment Status', style: AppTextStyle.textStyle16light),
                  SizedBox(
                    width: 50.w,
                  ),
                  Text('Paied', style: AppTextStyle.textStyle16regular),
                ]),
                const SizedBox(
                  height: 10,
                ),
                Row(children: [
                  Text('Amount', style: AppTextStyle.textStyle16light),
                  SizedBox(
                    width: 110.w,
                  ),
                  Text('300 EGP',
                      style: AppTextStyle.textStyle16regular
                          .copyWith(color: AppColors.secondaryColor)),
                ]),
                SizedBox(
                  height: 15.h,
                ),
                Row(children: [
                  Expanded(
                      child: CustomButton(
                    title: 'See Lab Result',
                    onPress: () {
                      goToScreen(screenNames: ScreenNames.labResultScreen);
                    },
                    style: AppTextStyle.textStyle14medium
                        .copyWith(color: AppColors.backgroundColor),
                  )),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                      child: CustomButton(
                    onPress: () {
                      goToScreen(screenNames: ScreenNames.bookingScreen);
                    },
                    title: AppWords.cancel.tr,
                    style: AppTextStyle.textStyle14medium
                        .copyWith(color: AppColors.backgroundColor),
                  ))
                ])
              ]))
        ]),
      ),
    );
  }
}

class PatienteProfileDetiles extends StatelessWidget {
  const PatienteProfileDetiles({
    super.key,
    required this.problem,
  });
  final String problem;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Icon(
        Icons.circle,
        color: AppColors.primaryColor,
        size: 12,
      ),
      SizedBox(
        width: 5.w,
      ),
      Text(problem, style: AppTextStyle.textStyle18regular)
    ]);
  }
}
