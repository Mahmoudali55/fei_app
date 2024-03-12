import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/layout/health_test_screen/health_test_screen/widgets/custom_indicator.dart';
import 'package:fei_app/view/layout/health_test_screen/health_test_screen/widgets/custom_page_view.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeastViewBody extends StatefulWidget {
  const TeastViewBody({super.key});

  @override
  State<TeastViewBody> createState() => _TeastViewBodyState();
}

class _TeastViewBodyState extends State<TeastViewBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: CustomPageView(
            pageController: pageController,
          ),
        ),
        Positioned(
          bottom: 15,
          right: 0,
          left: 0,
          child: CustomDotIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Positioned(
            bottom: 58,
            left: 5,
            right: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                  width: 170,
                  title: AppWords.clear.tr,
                  titleFontColor: AppColors.primaryColor,
                  borderColor: AppColors.primaryColor,
                  backgroundColor: Colors.white,
                  style: AppTextStyle.textStyle20medium
                      .copyWith(color: AppColors.primaryColor),
                  borderRadius: 8,
                  titleFontSize: 8,
                  onPress: () {},
                ),
                CustomButton(
                  style: AppTextStyle.textStyle20medium
                      .copyWith(color: AppColors.backgroundColor),
                  width: 170,
                  title: pageController!.hasClients
                      ? (pageController?.page == 3
                          ? AppWords.submit.tr
                          : AppWords.next.tr)
                      : AppWords.next.tr,
                  borderRadius: 8,
                  onPress: () {
                    if (pageController!.page! < 3) {
                      pageController?.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    } else {
                      {
                        goToScreen(
                            screenNames: ScreenNames.healthTestResultScreen);
                      }
                    }
                  },
                )
              ],
            ))
      ],
    );
  }
}
