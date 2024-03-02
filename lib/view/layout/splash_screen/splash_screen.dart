import 'dart:io';

import 'package:fei_app/helper/model/custom_model_splash.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/layout/auth/login_screen/login_screen.dart';
import 'package:fei_app/view/layout/splash_screen/widgets/custom_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_utils/get_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    _pageController.addListener(() {
      currentPage = _pageController.page!.toInt();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: PageView(
          controller: _pageController,
          onPageChanged: (int page) {
            setState(() {
              currentPage = page;
            });
          },
          children: [
            CustomSplashScreen(
              splashModel: SplashModel(
                onPress: () {
                  setState(() {
                    if (currentPage < 1) {
                      _pageController.animateToPage(
                        currentPage + 1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    }
                  });
                },
                image: AppImages.splash,
                title: AppWords.splashtitle1.tr,
                subtitle: AppWords.splashsubtitle1.tr,
                titlebutton: AppWords.next.tr,
              ),
              currentPage: currentPage,
            ),
            CustomSplashScreen(
              splashModel: SplashModel(
                  onPress: () {
                    setState(() {
                      if (currentPage < 2) {
                        _pageController.animateToPage(
                          currentPage + 1,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      }
                    });
                  },
                  image: AppImages.splash2,
                  title: AppWords.splashtitle2.tr,
                  subtitle: AppWords.splashsubtitle2.tr,
                  titlebutton: AppWords.next.tr),
              currentPage: currentPage,
            ),
            CustomSplashScreen(
              splashModel: SplashModel(
                  onPress: () {
                    goToScreen(screenNames: ScreenNames.loginScreen);
                  },
                  image: AppImages.splash3,
                  title: AppWords.splashtitle3.tr,
                  subtitle: AppWords.splashsubtitle3.tr,
                  titlebutton: AppWords.getStarted.tr),
              currentPage: currentPage,
            ),
          ],
        ));
  }
}
