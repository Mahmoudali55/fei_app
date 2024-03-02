import 'package:fei_app/helper/model/custom_model_splash.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/layout/splash_screen/widgets/custom_onbourding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';

class CustomSplashScreen extends StatefulWidget {
  const CustomSplashScreen({
    super.key,
    required this.splashModel,
    required this.currentPage,
  });
  final SplashModel splashModel;
  final int currentPage;

  @override
  State<CustomSplashScreen> createState() => _CustomSplashScreenState();
}

class _CustomSplashScreenState extends State<CustomSplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Container(
            color: AppColors.backgroundColor,
            child: Column(children: [
              AnimatedBuilder(
                  animation: _scaleAnimation,
                  builder: (context, child) {
                    return Transform.scale(
                        scale: _scaleAnimation.value,
                        child: Image.asset(widget.splashModel.image!));
                  }),
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
                      color: AppColors.primaryColor.withOpacity(0.20),
                      spreadRadius: 25,
                      blurRadius: 20,
                      offset: const Offset(0, 3),
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
                    Text(widget.splashModel.title,
                        style: AppTextStyle.textStyle32bold
                            .copyWith(fontSize: 27.sp)),
                    Text(
                      widget.splashModel.subtitle!,
                      style: AppTextStyle.textStyle20regular
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
                              title: widget.currentPage <= 1
                                  ? AppWords.skip.tr
                                  : '',
                              titleFontSize: 24,
                              style: AppTextStyle.textStyle24medium
                                  .copyWith(color: AppColors.primaryColor),
                              backgroundColor: Colors.transparent),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: CustomButton(
                            title: widget.splashModel.titlebutton,
                            style: AppTextStyle.textStyle24medium
                                .copyWith(color: AppColors.backgroundColor),
                            backgroundColor: AppColors.primaryColor,
                            titleFontSize: 20,
                            onPress: () => widget.splashModel.onPress(),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          3,
                          (index) => CustomOnbourding(
                                isActive: index == widget.currentPage,
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
