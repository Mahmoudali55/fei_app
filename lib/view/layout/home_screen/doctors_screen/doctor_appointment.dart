import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_settings.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/layout/home_screen/widgets/rate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DoctorAppointment extends StatefulWidget {
  const DoctorAppointment({super.key});

  @override
  State<DoctorAppointment> createState() => _DoctorAppointmentState();
}

class _DoctorAppointmentState extends State<DoctorAppointment> {
  DateTime currentDate = DateTime.now();
  String formattedTime = DateFormat.Hm().format(DateTime.now());
  bool isActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.height / 2.5,
            width: 385,
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(155),
              ),
            ),
            child: Stack(children: [
              Positioned(
                bottom: 20.h,
                left: .87.sw,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.hintColor,
                      child: Image.asset(
                        AppImages.phone,
                        fit: BoxFit.fill,
                        height: 20,
                        color: AppColors.textColor,
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.hintColor,
                      child: Image.asset(AppImages.email,
                          color: AppColors.textColor,
                          height: 20,
                          fit: BoxFit.fill),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.hintColor,
                      child: Image.asset(AppImages.video,
                          height: 20, fit: BoxFit.fill),
                    ),
                  ],
                ),
              ),
              const Positioned(
                top: 40,
                child: Row(
                  children: [
                    BackButtonCustom(
                      isArrowWhite: true,
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: 1,
                  //left: 20.w,
                  child: Row(
                    children: [
                      Image.asset(
                        AppImages.doctors,
                        height: 260.h,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                    ],
                  )),
              Positioned(
                bottom: 170.h,
                left: 150,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppWords.doctorsname.tr,
                        style: AppTextStyle.textStyle24bold
                            .copyWith(color: AppColors.backgroundColor),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Text(
                        AppWords.departmentname.tr,
                        style: AppTextStyle.textStyle20medium
                            .copyWith(color: AppColors.backgroundColor),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      const CustomRatingBar(
                        rate: 4,
                        initialRating: 3,
                      )
                    ]),
              )
            ])),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  DateFormat('MMMM yyyy').format(currentDate),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    1825,
                    (index) {
                      DateTime date = DateTime.now().add(Duration(days: index));

                      String formattedDate = DateFormat('E,   d').format(date);

                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 85.w,
                          height: 95.h,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 8),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: AppColors.hintColor,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text(
                            formattedDate,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppWords.morning.tr,
                style: AppTextStyle.textStyle24semiBold,
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 44,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 24, // عدد الساعات المراد عرضها
                  itemBuilder: (context, index) {
                    // حساب الوقت لكل ساعة
                    DateTime currentTime =
                        DateTime.now().add(Duration(hours: index));
                    String formattedTime = DateFormat.Hm().format(currentTime);

                    // إنشاء Container لعرض الوقت
                    return Container(
                      width: 119.w,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: AppColors.hintColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.watch_later_outlined,
                            color: AppColors.textColor,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            formattedTime,
                            style: const TextStyle(
                              color: AppColors.textColor,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppWords.evening.tr,
                style: AppTextStyle.textStyle24semiBold,
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 44,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 12, // عدد الساعات المراد عرضها
                  itemBuilder: (context, index) {
                    // حساب الوقت لكل ساعة
                    DateTime currentTime =
                        DateTime.now().add(Duration(hours: index));
                    String formattedTime = DateFormat.Hm().format(currentTime);

                    // إنشاء Container لعرض الوقت
                    return Container(
                      width: 119.w,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: AppColors.hintColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.watch_later_outlined,
                            color: AppColors.textColor,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            formattedTime,
                            style: const TextStyle(
                              color: AppColors.textColor,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        CustomButton(
          onPress: () {
            goToScreen(screenNames: ScreenNames.paymentMethod);
          },
          height: 52.h,
          width: 398.w,
          title: AppWords.book.tr,
          style: AppTextStyle.textStyle24medium
              .copyWith(color: AppColors.backgroundColor),
        )
      ],
    ));
  }
}
