import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/layout/health_test_screen/health_test_screen/widgets/health_test_body.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HealhTestScreen extends StatefulWidget {
  const HealhTestScreen({super.key});

  @override
  State<HealhTestScreen> createState() => _HealhTestScreenState();
}

class _HealhTestScreenState extends State<HealhTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
          title: Text(AppWords.healthtestpage.tr,
              style: AppTextStyle.textStyle24bold),
          centerTitle: true,
          leading: const BackButtonCustom(),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: TeastViewBody(),
        ));
  }
}
