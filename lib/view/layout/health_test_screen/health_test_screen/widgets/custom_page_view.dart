import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/layout/health_test_screen/health_test_screen/widgets/custom_test_question.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key, @required this.pageController})
      : super(key: key);

  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        SizedBox(
          child: SingleChildScrollView(
            child: Column(children: [
              CustomQuestion(
                question: AppWords.question1.tr,
              ),
              CustomQuestion(
                question: AppWords.question2.tr,
              ),
              CustomQuestion(
                question: AppWords.question3.tr,
              ),
              CustomQuestion(
                question: AppWords.question4.tr,
              ),
            ]),
          ),
        ),
        SizedBox(
          child: SingleChildScrollView(
            child: Column(children: [
              CustomQuestion(
                question: AppWords.question5.tr,
              ),
              CustomQuestion(
                question: AppWords.question6.tr,
              ),
              CustomQuestion(
                question: AppWords.question7.tr,
              ),
              CustomQuestion(
                question: AppWords.question8.tr,
              ),
              CustomQuestion(
                question: AppWords.question9.tr,
              )
            ]),
          ),
        ),
        SizedBox(
          child: SingleChildScrollView(
            child: Column(children: [
              CustomQuestion(
                question: AppWords.question10.tr,
              ),
              CustomQuestion(
                question: AppWords.question11.tr,
              ),
              CustomQuestion(
                question: AppWords.question12.tr,
              ),
              CustomQuestion(
                question: AppWords.question13.tr,
              ),
            ]),
          ),
        ),
        SizedBox(
          child: SingleChildScrollView(
            child: Column(children: [
              CustomQuestion(
                question: AppWords.question14.tr,
              ),
              CustomQuestion(
                question: AppWords.question15.tr,
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
