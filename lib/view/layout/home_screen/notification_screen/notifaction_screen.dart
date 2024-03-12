import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool isDeleted = false; // متغير لتتبع حالة الحذف

  void deleteContainer() {
    setState(() {
      isDeleted = true; // تحديث حالة الحذف
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          leading: const BackButtonCustom(),
          title: Text(
            AppWords.notifcation.tr,
            style: AppTextStyle.textStyle24bold,
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: AppColors.backgroundColor,
          actions: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  const Icon(
                    Icons.notifications,
                    size: 35,
                    color: AppColors.textColor,
                  ),
                  Positioned(
                      left: 9.w,
                      top: 4.h,
                      child: Container(
                        width: 15.w,
                        height: 15.h,
                        decoration: const ShapeDecoration(
                            shape: CircleBorder(), color: Colors.red),
                      )),
                ],
              )
            ]),
          ],
        ),
        body: isDeleted
            ? Center(
                child: Text(
                  ' You have no notifications',
                  style: AppTextStyle.textStyle24bold,
                ),
              )
            : Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Wrap(spacing: 10, runSpacing: 10, children: [
                        ...List.generate(
                            1,
                            (index) => InkWell(
                                onTap: deleteContainer,
                                child: const CustomNavgation())),
                      ])
                    ],
                  ),
                ),
              ));
  }
}

class CustomNavgation extends StatelessWidget {
  const CustomNavgation({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      width: 1.sw,
      decoration: const BoxDecoration(
          color: AppColors.hintColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('Account Alert', style: AppTextStyle.textStyle16bold),
          Text('30min', style: AppTextStyle.textStyle14medium),
        ]),
        Text(
            'Doctor appointment today at 6:30pm,\nneed to pick up files on the way.',
            style: AppTextStyle.textStyle16bold.copyWith(color: Colors.grey)),
        Align(
          alignment: Alignment.bottomRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                height: 20,
                AppImages.schedul,
                color: AppColors.textColor,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: onTap,
                child: const Icon(Icons.delete, color: AppColors.textColor),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
