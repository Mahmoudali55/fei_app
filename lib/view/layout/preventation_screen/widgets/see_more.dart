import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            AppWords.protection.tr,
          ),
          centerTitle: true,
          leading: const BackButtonCustom(),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          const Divider(
            indent: 10,
            endIndent: 10,
            thickness: 2,
          ),
          StepPreventation(
            text: AppWords.prodctiondescraption4.tr,
          ),
          StepPreventation(
            text: AppWords.prodctiondescraption5.tr,
          ),
          StepPreventation(
            text: AppWords.prodctiondescraption6.tr,
          ),
          StepPreventation(
            text: AppWords.prodctiondescraption7.tr,
          ),
          StepPreventation(
            text: AppWords.prodctiondescraption8.tr,
          ),
          StepPreventation(
            text: AppWords.prodctiondescraption9.tr,
          ),
          StepPreventation(
            text: AppWords.prodctiondescraption10.tr,
          ),
          StepPreventation(
            text: AppWords.prodctiondescraption11.tr,
          ),
          StepPreventation(
            text: AppWords.prodctiondescraption12.tr,
          ),
          StepPreventation(
            text: AppWords.prodctiondescraption13.tr,
          ),
        ])));
  }
}

class StepPreventation extends StatelessWidget {
  const StepPreventation({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              const Icon(
                Icons.circle,
                size: 25,
                color: Color(0xffC80000),
              ),
              Container(
                height: 100,
                width: 1,
                color: AppColors.textColor,
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: AppTextStyle.textStyle14bold,
          ),
        ],
      ),
    );
  }
}
