import 'package:fei_app/helper/model/custom_model_splash.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/layout/splash_screen/widgets/custom_onbourding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';

class CustomSplashScreen extends StatelessWidget {
  const CustomSplashScreen({
    super.key,
    required this.splashModel,
    required this.currentPage,
  });
  final SplashModel splashModel;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Container(
            color: AppColors.backgroundColor,
            child: Column(children: [
              Image.asset(splashModel.image),
              Container(
                margin: EdgeInsets.only(top: 30.h, right: 10.w, left: 10.w),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                width: double.infinity,
                height: 450.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color:
                          AppColors.primaryColor.withOpacity(0.5), // لون الظل
                      spreadRadius: 15, // نطاق الانتشار
                      blurRadius: 20, // نطاق الضبابية
                      offset:
                          const Offset(0, 3), // التحريك الأفقي والعمودي للظل
                    ),
                  ],
                  color: AppColors.primaryColor.withOpacity(0.0),
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(145),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(splashModel.title,
                        style: AppTextStyle.textStyle32bold
                            .copyWith(fontSize: 27.sp)),
                    Text(
                      splashModel.subtitle,
                      style: AppTextStyle.textStyle22light
                          .copyWith(fontSize: 20.sp),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                              onPress: () {
                                goToScreen(
                                    screenNames: ScreenNames.loginScreen);
                              },
                              titleFontColor: AppColors.secondaryColor,
                              title: AppWords.skip.tr,
                              titleFontSize: 24,
                              backgroundColor: Colors.transparent),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: CustomButton(
                            title: splashModel.titlebutton,
                            backgroundColor: AppColors.primaryColor,
                            titleFontSize: 20,
                            onPress: () => splashModel.onPress(),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          3,
                          (index) => CustomOnbourding(
                                isActive: index == currentPage,
                              )),
                    )
                  ],
                ),
              ),
            ])),
      ),
    );
  }
}
