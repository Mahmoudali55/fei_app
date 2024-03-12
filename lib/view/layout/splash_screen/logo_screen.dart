import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';

import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat(reverse: true);
    _animation = Tween(begin: 1.0, end: 0.8).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    // _selectDate(context);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Transform.scale(
                scale: _animation.value,
                child: Image.asset(AppImages.logo),
              );
            },
          ),
          Text(
            AppWords.logename.tr,
            style: AppTextStyle.textStyle48bold,
          ),
          SizedBox(height: 100.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                onPress: () {
                  goToScreen(
                    screenNames: ScreenNames.splashScreen,
                    arguments: Screen.patientScreen,
                  );
                },
                title: 'Patient',
                style: AppTextStyle.textStyle24bold
                    .copyWith(color: AppColors.backgroundColor),
                width: 150,
              ),
              const SizedBox(
                width: 20,
              ),
              CustomButton(
                onPress: () {
                  goToScreen(
                    screenNames: ScreenNames.splashScreen,
                    arguments: Screen.doctorScreen,
                  );
                },
                style: AppTextStyle.textStyle24bold
                    .copyWith(color: AppColors.backgroundColor),
                title: 'Doctor',
                width: 150,
              ),
            ],
          )
        ]),
      ),
    );
  }
}

enum Screen {
  doctorScreen,
  patientScreen,
}
