import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomeHelpCenter extends StatefulWidget {
  const CustomeHelpCenter({super.key});

  @override
  State<CustomeHelpCenter> createState() => CustomeHelpCenterState();
}

class CustomeHelpCenterState extends State<CustomeHelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomeHelp(
        additionalTexts: [
          ' Chest pain :  The pain of a lung \nstroke is described as\n a sharp, knife-like pain that occurs suddenly\n and can get  worse when\n the patient breathes\n deeply.',
          ' Cough :  Another symptom of lung\n thrombosis is the patients cough,\n which is usually a dry cough.\n However, in  some cases,\n as the disease progresses,\n the patient may suffer from \ncoughing up blood.',
        ],
        text:
            'Causes of shortness of breath related to heart and lung problems',
        maxAdditionalContainers: 2,
      ),
      CustomeHelp(
        additionalTexts: [
          'Excessive sweating.\n Bluishness of the body, especially the lips \n and nails. \nDizziness.  \nIncreased breathing rate.\nAheart rhythm disorder,where the patient\n may suffer from a rapid heartbeat, and his\n pulse may be  weak./nWhistling or buzzing.',
          'Symptoms of a stroke in the leg or arm may\n also appear in the patient, which can be\n considered  warning signs of a lung stroke,\n especially if the cause of the lung stroke is\n the transfer of the leg or  arm clot to the\n lung, including:\nLeg or arm pain.\nSwelling of the leg or arm.\nLeg or arm warmth.'
        ],
        text:
            'A lung stroke patient may also suffer from the following symptoms:',
        maxAdditionalContainers: 2,
      ),
      CustomeHelp(
        additionalTexts: [
          'Unconsciousness.\nSevere low blood pressure.\nShock'
        ],
        text: 'What are the symptoms of a stroke in men?',
        maxAdditionalContainers: 1,
      ),
      CustomeHelp(
        additionalTexts: [
          ' The symptoms of a lung clot persist as\n long as appropriate treatment is not given,\n and the amount of  time it takes for\n the symptoms of a lung clot to disappear can\n vary from person to person. In general,\n  recovery from a lung embolism and its\n symptoms can occur several weeks or\n months after receiving  treatment.',
          'It is possible that the symptoms of\n a pulmonary artery clot, such as shortness of\n breath or chest pain,  will continue for\n several weeks, months, or even years after\n the occurrence, depending on the  damage\n caused by the clot to the lung'
        ],
        text: 'How long do lung stroke symptoms last?',
        maxAdditionalContainers: 2,
      ),
      CustomeHelp(
        additionalTexts: [
          'Injury: Injuries, such as broken bones or\n torn muscles, can damage blood vessels,\n leading to clots.',
          ' Idleness :  During long periods of inactivity,\n gravity causes blood to pool in the lowest\n areas of the body, which  may lead to blood\n clots. This may occur while sitting on a long\n flight, or while lying in bed and during\n  recovery from an illness',
          'Somemedical conditions:  Some health\n conditions cause blood to clot easily,\n and treatments that involve surgery often lead\n to  short-term bed rest or restricted\n movement, which may increase the possibility\n of clotting. Some  medical\n treatments for cancer can also have side\n effects such as blood clotting'
        ],
        text: 'Causes of lung stroke',
        maxAdditionalContainers: 3,
      ),
      CustomeHelp(
        additionalTexts: [
          'Having a blood clotting disorder\n'
              'Lack of movement as a result of surgery,\n fracture, accident, or any movement disability.\n'
              "Smoking.\n"
              "Obesity.\n"
              "Cancer or inflammatory bowel disease.\n Damage toblood vessels.\n"
              "Having a family history of \nlung embolism.  Pregnancy.\n"
              "Taking contraceptives containing estrogen.\n"
        ],
        text: 'The factors that increase the possibility of infection:',
        maxAdditionalContainers: 1,
      ),
      CustomeHelp(
        additionalTexts: [
          'Avoid immobilization for a long period of \n'
              'time, especially after surgery, a fracture,\n'
              "illness, or any  reason that could cause \n"
              "movement impairment.\n"
              "Quit smoking and reduce alcohol intake. \n"
              "Exercise regularly.\n"
              "Wear compression stockings.\n"
              "Makesure to sleep well.\n"
              "Giving a regular dose of blood-thinning \n"
              "medications, especially in patients at high\n"
              "risk of  developing lung clots.\n"
        ],
        text: 'How can lung stroke be prevented?',
        maxAdditionalContainers: 1,
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
                        overflow: TextOverflow.fade,
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
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                  // maxLines: 2,
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
