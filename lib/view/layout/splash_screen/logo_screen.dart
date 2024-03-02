import 'package:fei_app/helper/routes/routes.dart';

import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
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
  Future<void> _selectDate(BuildContext context) async {
    Future.delayed(const Duration(seconds: 3), () {
      goToScreen(screenNames: ScreenNames.splashScreen);
      //   showDialog(
      //       context: context,
      //       builder: (BuildContext context) {
      //         return CupertinoAlertDialog(
      //           content: AnimatedBuilder(
      //             animation: _animation,
      //             builder: (context, child) {
      //               return Transform.scale(
      //                 scale: _animation.value,
      //                 child: Image.asset(AppImages.logo),
      //               );
      //             },
      //           ),
      //           title: Text(
      //             'welcome to our uncoming fei app',
      //             style: AppTextStyle.textStyle18medium,
      //           ),
      //           actions: [
      //             CupertinoDialogAction(
      //                 onPressed: () {
      //                   goToScreen(screenNames: ScreenNames.splashScreen);
      //                 },
      //                 child: Text('patient',
      //                     style: AppTextStyle.textStyle17regular
      //                         .copyWith(color: Colors.blue))),
      //             CupertinoDialogAction(
      //               onPressed: () {
      //                 goToScreen(screenNames: ScreenNames.splashScreen);
      //               },
      //               child: Text(
      //                 'Doctor',
      //                 style: AppTextStyle.textStyle17semiBold
      //                     .copyWith(color: Colors.red),
      //               ),
      //             ),
      //           ],
      //         );
      //       });
    });
  }

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
    _selectDate(context);
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
          SizedBox(height: 20.h),
          Text(
            AppWords.logename.tr,
            style: AppTextStyle.textStyle48bold,
          ),
        ]),
      ),
    );
  }
}
