import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomQuestion extends StatefulWidget {
  final String question;
  const CustomQuestion({
    super.key,
    required this.question,
  });

  @override
  State<CustomQuestion> createState() => _CustomQuestionState();
}

class _CustomQuestionState extends State<CustomQuestion> {
  String groupValue = '';

  _CustomQuestionState();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.question, style: AppTextStyle.textStyle20medium),
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Radio(
                        activeColor: AppColors.primaryColor,
                        value: 'yes',
                        groupValue: groupValue,
                        onChanged: (Val) {
                          setState(() {
                            groupValue = Val!;
                          });
                        }),
                    Text(
                      AppWords.yes.tr,
                      style: AppTextStyle.textStyle20bold
                          .copyWith(fontSize: 18)
                          .copyWith(color: AppColors.primaryColor),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        activeColor: AppColors.primaryColor,
                        value: 'No',
                        groupValue: groupValue,
                        onChanged: (Val) {
                          setState(() {
                            groupValue = Val!;
                          });
                        }),
                    Text(
                      AppWords.no.tr,
                      style: AppTextStyle.textStyle20bold
                          .copyWith(fontSize: 18)
                          .copyWith(color: AppColors.primaryColor),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
