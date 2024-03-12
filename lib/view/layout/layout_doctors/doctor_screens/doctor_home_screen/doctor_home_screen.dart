import 'package:fei_app/helper/model/custom_home_model.dart';

import 'package:fei_app/helper/model/doctormodel/custom_hospital_model.dart';
import 'package:fei_app/helper/model/doctormodel/custom_schedule_model.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/helper/utils/validator.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:fei_app/view/layout/home_screen/widgets/custom_services.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/doctor_home_screen/widgets/custom_patient_list.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/doctor_home_screen/widgets/custom_services.dart';
import 'package:fei_app/view/layout/layout_doctors/doctor_screens/doctor_home_screen/widgets/uncomming_appointment.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get_utils/get_utils.dart';

class DoctorHomeScreen extends StatefulWidget {
  const DoctorHomeScreen({super.key});
  @override
  State<DoctorHomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<DoctorHomeScreen> {
  TextEditingController searchController = TextEditingController();
  List<CustomServicesModel> listservices = [
    CustomServicesModel(
      title: AppWords.plans.tr,
      image: AppImages.plane,
      onTap: () {
        goToScreen(screenNames: ScreenNames.medicineReminder);
      },
    ),
    CustomServicesModel(
        onTap: () {
          goToScreen(screenNames: ScreenNames.labResultScreen);
        },
        title: AppWords.labResult.tr,
        image: AppImages.labResult),
    CustomServicesModel(
      title: AppWords.reviews.tr,
      image: AppImages.reviews,
      onTap: () {
        goToScreen(screenNames: ScreenNames.reviewScreen);
      },
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 45),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(AppWords.welcome.tr,
                  style: AppTextStyle.textStyle24semiBold
                      .copyWith(color: AppColors.hintColor)),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  Text(AppWords.doctorsname.tr,
                      style: AppTextStyle.textStyle32semiBold),
                  const Spacer(),
                  CircleAvatar(
                    backgroundColor: AppColors.hintColor,
                    radius: 16.r,
                    child: Icon(Icons.settings, size: 20.sp),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  CircleAvatar(
                    backgroundColor: AppColors.hintColor,
                    radius: 16.r,
                    child: Icon(Icons.notifications, size: 20.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomTextField(
                onTap: () {},
                height: 50.h,
                currentFocusNode: FocusNode(),
                nextFocusNode: FocusNode(),
                fillColor: AppColors.backgroundColor,
                hintText: 'what do you need?',
                inputType: TextInputType.text,
                textFieldValidType: TextFieldValidatorType.Optional,
                prefixIcon: AppImages.searchIcon,
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                AppWords.services.tr,
                style: AppTextStyle.textStyle22medium,
              ),
              Wrap(
                direction: Axis.horizontal,
                spacing: 65.w,
                children: [
                  ...List.generate(
                      3,
                      (index) => CustomServicesDoctor(
                            customServicesModel: listservices[index],
                          ))
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    AppWords.upCommingA.tr,
                    style: AppTextStyle.textStyle22medium,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      goToScreen(screenNames: ScreenNames.sechdualedSurgries);
                    },
                    child: Text(
                      AppWords.seeall.tr,
                      style: AppTextStyle.textStyle17medium
                          .copyWith(color: AppColors.primaryColor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              UnCommingAppointment(
                titlebutton1: AppWords.confirm.tr,
                titlebutton2: AppWords.cancel.tr,
                isAccepted: true,
                screenNames: ScreenNames.cancelBookScreen,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    AppWords.patients.tr,
                    style: AppTextStyle.textStyle22medium,
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      goToScreen(screenNames: ScreenNames.hospitalScreen);
                    },
                    child: Text(
                      AppWords.seeall.tr,
                      style: AppTextStyle.textStyle17medium
                          .copyWith(color: AppColors.primaryColor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(4, (index) => const CustomPatientList()),
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
