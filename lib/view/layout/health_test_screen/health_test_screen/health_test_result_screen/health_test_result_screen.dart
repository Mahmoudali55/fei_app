import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TestResultScreen extends StatefulWidget {
  const TestResultScreen({super.key});

  @override
  State<TestResultScreen> createState() => _TestResultScreenState();
}

class _TestResultScreenState extends State<TestResultScreen> {
  Future<void> _selectDate(BuildContext context) async {
    Future.delayed(const Duration(seconds: 2), () {
      goToScreen(screenNames: ScreenNames.homeScreen);
    });
  }

  double present = 53;

  @override
  void initState() {
    super.initState();
    _selectDate(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularPercentIndicator(
              rotateLinearGradient: true,
              circularStrokeCap: CircularStrokeCap.round,
              radius: 115,
              lineWidth: 15,
              percent: present / 100,
              animation: true,
              animateFromLastPercent: true,
              center: Text(
                '${present.toStringAsFixed(0)}%',
                style: AppTextStyle.textStyle55bold,
              ),
              linearGradient: const LinearGradient(
                  colors: [Color(0xffFF00E5), Color(0xff4DB297)]),
            ),
          ],
        ),
      ),
    );
  }
}
