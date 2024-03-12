import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

class CancelScreen extends StatefulWidget {
  const CancelScreen({super.key});

  @override
  State<CancelScreen> createState() => _CancelScreenState();
}

List list = [
  'Option 1',
  'Option 2',
  'Option 3',
  'Option 4',
  'Option 5',
  'Option 6'
];

class _CancelScreenState extends State<CancelScreen> {
  String selectedOption = list[0];
  bool isShowTextfield = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonCustom(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          AppWords.cancelled.tr,
          style: AppTextStyle.textStyle24bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Divider(),
          Text(
            AppWords.reason.tr,
            style: AppTextStyle.textStyle18semiBold,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              height: 49.h,
              width: 398.w,
              decoration: BoxDecoration(
                color: AppColors.hintColor,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Row(children: [
                Radio(
                  activeColor: Colors.pink,
                  value: list[0],
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value.toString();
                    });
                  },
                ),
                Text(AppWords.cancel1.tr,
                    style: AppTextStyle.textStyle20semibold),
              ])),
          SizedBox(height: 10.h),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              height: 49.h,
              width: 398.w,
              decoration: BoxDecoration(
                color: AppColors.hintColor,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Row(children: [
                Radio(
                  activeColor: Colors.pink,
                  value: list[1],
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value.toString();
                    });
                  },
                ),
                Text(AppWords.cancel2.tr,
                    style: AppTextStyle.textStyle20semibold),
              ])),
          SizedBox(height: 10.h),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              height: 49.h,
              width: 398.w,
              decoration: BoxDecoration(
                color: AppColors.hintColor,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Row(children: [
                Radio(
                  activeColor: Colors.pink,
                  value: list[2],
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value.toString();
                    });
                  },
                ),
                Text(AppWords.cancel3.tr,
                    style: AppTextStyle.textStyle20semibold),
              ])),
          SizedBox(height: 10.h),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              height: 49.h,
              width: 398.w,
              decoration: BoxDecoration(
                color: AppColors.hintColor,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Row(children: [
                Radio(
                  activeColor: Colors.pink,
                  value: list[3],
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value.toString();
                    });
                  },
                ),
                Text(AppWords.cancel4.tr,
                    style: AppTextStyle.textStyle20semibold),
              ])),
          SizedBox(height: 10.h),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              height: 49.h,
              width: 398.w,
              decoration: BoxDecoration(
                color: AppColors.hintColor,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Row(children: [
                Radio(
                  activeColor: Colors.pink,
                  value: list[4],
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value.toString();
                    });
                  },
                ),
                Text(AppWords.cancel5.tr,
                    style: AppTextStyle.textStyle20semibold),
              ])),
          SizedBox(height: 10.h),
          GestureDetector(
            onTap: () {
              setState(() {
                isShowTextfield = !isShowTextfield;
              });
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                height: 49.h,
                width: 398.w,
                decoration: BoxDecoration(
                  color: AppColors.hintColor,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Row(children: [
                  Radio(
                    activeColor: Colors.pink,
                    value: list[5],
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                        isShowTextfield = !isShowTextfield;
                      });
                    },
                  ),
                  Text(AppWords.cancel6.tr,
                      style: AppTextStyle.textStyle20semibold),
                ])),
          ),
          SizedBox(height: 10.h),
          isShowTextfield == true && selectedOption == list[5]
              ? SizedBox(
                  width: 370.w,
                  height: 239.h,
                  child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 7,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        hintText: 'Enter your reason',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      )),
                )
              : const SizedBox(),
          isShowTextfield == true && selectedOption == list[5]
              ? const SizedBox()
              : SizedBox(height: 250.h),
          CustomButton(
            title: AppWords.cancelAppointment.tr,
            style: AppTextStyle.textStyle24medium
                .copyWith(color: AppColors.backgroundColor),
          )
        ]),
      ),
    );
  }
}
