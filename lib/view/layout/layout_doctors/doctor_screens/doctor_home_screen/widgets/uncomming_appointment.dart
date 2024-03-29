// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fei_app/helper/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';

class UnCommingAppointment extends StatefulWidget {
  const UnCommingAppointment({
    Key? key,
    required this.titlebutton1,
    required this.titlebutton2,
    required this.isAccepted,
    required this.screenNames,
    required this.image,
    this.confirammassage,
  }) : super(key: key);
  final String titlebutton1;
  final String titlebutton2;
  final bool isAccepted;
  final String screenNames;
  final String image;
  final void Function()? confirammassage;

  @override
  State<UnCommingAppointment> createState() => _UnCommingAppointmentState();
}

class _UnCommingAppointmentState extends State<UnCommingAppointment> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(25.r),
          border: Border.all(color: AppColors.textColor, width: .5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'July 25, 2024 - 10:00',
            style: AppTextStyle.textStyle17medium,
          ),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            color: AppColors.hintColor,
            thickness: 1,
            height: 5.h,
          ),
          ListTile(
              leading: Image.asset(widget.image),
              title: Text(
                AppWords.patientName.tr,
              ),
              subtitle: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: AppWords.myBooking.tr,
                    style: AppTextStyle.textStyle16medium),
                TextSpan(
                  text: AppWords.patientID.tr,
                  style: AppTextStyle.textStyle17medium
                      .copyWith(color: AppColors.primaryColor),
                ),
              ]))),
          SizedBox(
            height: 20.h,
          ),
          const Divider(
            color: AppColors.hintColor,
            thickness: 1,
            height: 5,
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                onPress: widget.confirammassage,
                backgroundColor: selectedIndex == 0
                    ? AppColors.primaryColor
                    : AppColors.backgroundColor,
                width: 200.w,
                title: widget.titlebutton1.tr,
                borderColor: AppColors.primaryColor,
                style: selectedIndex == 0
                    ? AppTextStyle.textStyle14medium
                        .copyWith(color: AppColors.backgroundColor)
                    : AppTextStyle.textStyle14medium,
              ),
              CustomButton(
                onPress: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                  goToScreen(screenNames: widget.screenNames);
                },
                backgroundColor: selectedIndex == 1
                    ? widget.isAccepted
                        ? Colors.red
                        : AppColors.primaryColor
                    : AppColors.backgroundColor,
                borderWidth: 1,
                borderColor:
                    widget.isAccepted ? Colors.red : AppColors.primaryColor,
                width: 180.w,
                title: widget.titlebutton2.tr,
                style: selectedIndex == 1
                    ? AppTextStyle.textStyle14medium
                        .copyWith(color: AppColors.backgroundColor)
                    : AppTextStyle.textStyle14medium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
