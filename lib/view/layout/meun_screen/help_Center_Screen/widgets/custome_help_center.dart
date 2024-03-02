import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomeHelpCenter extends StatefulWidget {
  const CustomeHelpCenter({super.key});

  @override
  State<CustomeHelpCenter> createState() => _CustomeHelpCenterState();
}

class _CustomeHelpCenterState extends State<CustomeHelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomeHelp(
        text: AppWords.definition.tr,
      ),
      CustomeHelp(
        text: AppWords.happen.tr,
      ),
      CustomeHelp(
        text: AppWords.symptoms.tr,
      ),
      CustomeHelp(
        text: AppWords.causes.tr,
      ),
      CustomeHelp(
        text: AppWords.treatment.tr,
      ),
      CustomeHelp(
        text: AppWords.preventation.tr,
      ),
    ]);
  }
}

class CustomeHelp extends StatefulWidget {
  const CustomeHelp({
    super.key,
    required this.text,
    this.onTap,
  });

  final String text;
  final Function()? onTap;

  @override
  State<CustomeHelp> createState() => _CustomeHelpState();
}

class _CustomeHelpState extends State<CustomeHelp> {
  double _containerHeight = 51.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          width: double.infinity,
          height: 51.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.textColor,
            ),
            borderRadius: BorderRadius.circular(10),
            color: AppColors.backgroundColor,
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                _containerHeight = _containerHeight == 51.0 ? 200.0 : 51.0;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.text,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: AppTextStyle.textStyle18medium,
                ),

                const Icon(Icons.chevron_right_outlined,
                    size: 25, color: AppColors.textColor), // الأيقونة
                // النص
              ],
            ),
          ),
        )
      ],
    );
  }
}
