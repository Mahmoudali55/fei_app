import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomePreventationScreen extends StatefulWidget {
  const CustomePreventationScreen({super.key});

  @override
  State<CustomePreventationScreen> createState() =>
      _CustomePreventationScreenState();
}

class _CustomePreventationScreenState extends State<CustomePreventationScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomeHelp(
        additionalTexts: [
          AppWords.definitiondescraption1.tr,
        ],
        text: AppWords.definition.tr,
        maxAdditionalContainers: 1,
      ),
      CustomeHelp(
        additionalTexts: [
          AppWords.happendescraption1.tr,
          AppWords.happendescraption2.tr,
          AppWords.happendescraption3.tr,
          AppWords.happendescraption4.tr,
        ],
        text: AppWords.happen.tr,
        maxAdditionalContainers: 4,
      ),
      CustomeHelp(
        additionalTexts: [
          AppWords.symptomsdescraption1.tr,
          AppWords.symptomsdescraption2.tr,
          AppWords.symptomsdescraption3.tr,
        ],
        text: AppWords.symptoms.tr,
        maxAdditionalContainers: 3,
      ),
      CustomeHelp(
        additionalTexts: [
          AppWords.causesdescraption1.tr,
          AppWords.causesdescraption2.tr,
          AppWords.causesdescraption3.tr,
          AppWords.causesdescraption4.tr,
        ],
        text: AppWords.causes.tr,
        maxAdditionalContainers: 4,
      ),
      CustomeHelp(
        additionalTexts: [
          AppWords.treatmentdescraption1.tr,
          AppWords.treatmentdescraption2.tr,
          AppWords.treatmentdescraption3.tr,
          AppWords.treatmentdescraption4.tr,
        ],
        text: AppWords.treatment.tr,
        maxAdditionalContainers: 4,
      ),
      CustomeHelp(
        additionalTexts: [
          AppWords.prodctiondescraption1.tr,
          AppWords.prodctiondescraption2.tr,
          AppWords.prodctiondescraption3.tr,
        ],
        text: AppWords.preventation.tr,
        maxAdditionalContainers: 3,
      ),
    ]);
  }
}

class CustomeHelp extends StatefulWidget {
  const CustomeHelp({
    super.key,
    required this.text,
    this.onTap,
    this.maxAdditionalContainers = 1,
    required this.additionalTexts,
  });

  final String text;
  final Function()? onTap;
  final int maxAdditionalContainers;
  final List<String> additionalTexts;

  @override
  State<CustomeHelp> createState() => _CustomeHelpState();
}

class _CustomeHelpState extends State<CustomeHelp> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
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
                isExpanded = !isExpanded;
              });
            },
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        widget.text,
                        textAlign: TextAlign.start,
                        style: AppTextStyle.textStyle16medium,
                        maxLines:
                            isExpanded ? null : 2, // Change max lines here
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Icon(
                      isExpanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      size: 25,
                      color: AppColors.textColor,
                    ),
                  ],
                ),
                if (isExpanded) ...[
                  const SizedBox(height: 10),
                  for (int i = 0;
                      i < widget.additionalTexts.length &&
                          i < widget.maxAdditionalContainers;
                      i++)
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 3, vertical: 7),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.hintColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(Icons.circle,
                                    size: 15, color: Color(0xffC80000)),
                                Text(
                                  widget.additionalTexts[i],
                                  style: AppTextStyle.textStyle14regular,
                                ),
                              ]),
                        ],
                      ),
                    ),
                  const SizedBox(height: 10),
                  if (widget.maxAdditionalContainers == 3 &&
                      isExpanded &&
                      widget.text == AppWords.protection.tr) ...[
                    // Check if the current container is the third one and it's expanded
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all<double>(0),
                              fixedSize:
                                  MaterialStatePropertyAll(Size(121.w, 30.h)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xffC80000),
                              )),
                          onPressed: () {
                            goToScreen(screenNames: ScreenNames.seeMore);
                          },
                          child: Text(
                            'See More',
                            style: AppTextStyle.textStyle13bold
                                .copyWith(color: AppColors.backgroundColor),
                          )),
                    ),
                    const SizedBox(height: 10),
                  ],
                ],
              ],
            ),
          ),
        )
      ],
    );
  }
}
