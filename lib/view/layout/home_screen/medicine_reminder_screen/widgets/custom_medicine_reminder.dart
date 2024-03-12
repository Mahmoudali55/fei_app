import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'remainder_medicin.dart';

class CustomMedicineReminder extends StatefulWidget {
  const CustomMedicineReminder({
    super.key,
  });

  @override
  State<CustomMedicineReminder> createState() => _CustomMedicineReminderState();
}

class _CustomMedicineReminderState extends State<CustomMedicineReminder> {
  bool isAccepted = false;
  int selectedFilterIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
//height: MediaQuery.of(context).size.height / 3,
        //width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 50),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const BackButtonCustom(),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.backgroundColor,
                      border: Border.all(color: AppColors.textColor, width: 4),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.person,
                      size: 40.h,
                    )),
                const SizedBox(
                  width: 5,
                ),
                Text(AppWords.mededicineReminder.tr,
                    style: AppTextStyle.textStyle32bold
                        .copyWith(color: AppColors.backgroundColor))
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedFilterIndex = 0;
                      });
                    },
                    child: Remainder(
                      isAccepted: selectedFilterIndex == 0,
                      text: AppWords.day.tr,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedFilterIndex = 1;
                      });
                    },
                    child: Remainder(
                      isAccepted: selectedFilterIndex == 1,
                      text: AppWords.week.tr,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedFilterIndex = 2;
                      });
                    },
                    child: Remainder(
                      isAccepted: selectedFilterIndex == 2,
                      text: AppWords.month.tr,
                    ),
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
