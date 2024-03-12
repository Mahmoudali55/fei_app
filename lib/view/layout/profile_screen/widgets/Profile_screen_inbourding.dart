import 'dart:io';

import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_settings.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:fei_app/view/layout/home_screen/home_screen.dart';
import 'package:fei_app/view/layout/profile_screen/widgets/Custom_setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreenOnboarding extends StatefulWidget {
  const ProfileScreenOnboarding({super.key});

  @override
  State<ProfileScreenOnboarding> createState() =>
      _ProfileScreenOnboardingState();
}

List<String> option = [
  'male',
  'female',
];

class _ProfileScreenOnboardingState extends State<ProfileScreenOnboarding> {
  String currentOption = option[0];
  File? imageProfile;
  bool isActive = true;
  String? selectedRadio;
  var name = FocusNode();
  var phonenumber = FocusNode();
  var city = FocusNode();
  var gavernment = FocusNode();
  var email = FocusNode();
  var brithDate = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 70),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                  height: 50.h,
                  width: 399.w,
                  decoration: BoxDecoration(
                    color: AppColors.hintColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isActive = true;
                        });
                      },
                      child: Container(
                        height: 50.h,
                        width: 199.w,
                        decoration: BoxDecoration(
                          color: isActive
                              ? AppColors.primaryColor
                              : AppColors.hintColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                            child: Text(AppWords.userprofile.tr,
                                style: isActive
                                    ? AppTextStyle.textStyle16semiBold.copyWith(
                                        color: AppColors.backgroundColor)
                                    : AppTextStyle.textStyle16semiBold)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isActive = false;
                        });
                      },
                      child: Container(
                        height: 50.h,
                        width: 199.w,
                        decoration: BoxDecoration(
                          color: isActive
                              ? AppColors.hintColor
                              : AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                            child: Text(AppWords.settings.tr,
                                style: isActive
                                    ? AppTextStyle.textStyle16semiBold
                                    : AppTextStyle.textStyle16semiBold.copyWith(
                                        color: AppColors.backgroundColor))),
                      ),
                    ),
                  ])),
              isActive == true
                  ? Column(
                      children: [
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('Make choice'),
                                content: SingleChildScrollView(
                                    child: Column(
                                  children: [
                                    ListTile(
                                      leading: const Icon(Icons.camera),
                                      title: const Text('Camera'),
                                      onTap: () {
                                        getImageFromCamera();
                                        goBack();
                                      },
                                    ),
                                    ListTile(
                                      leading: const Icon(Icons.image),
                                      title: const Text('gallery'),
                                      onTap: () {
                                        getImageFromGallery();
                                        goBack();
                                      },
                                    ),
                                  ],
                                )),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 20.h, right: 10.w, left: 10.w),
                            width: 106,
                            // height: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.textColor, width: 4),
                              shape: BoxShape.circle,
                            ),
                            child: imageProfile == null
                                ? Center(
                                    child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: AppColors.textColor,
                                        size: 70.sp,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                    ],
                                  ))
                                : Image.file(
                                    imageProfile!,
                                    fit: BoxFit.fill,
                                  ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextField(
                          height: 65.h,
                          obscureText: false,
                          cursorColor: AppColors.hintColor,
                          onTap: () {},
                          currentFocusNode: name,
                          nextFocusNode: phonenumber,
                          fillColor: AppColors.hintColor,
                          hintText: AppWords.name.tr,
                          inputType: TextInputType.name,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextField(
                          height: 65.h,
                          obscureText: false,
                          cursorColor: AppColors.hintColor,
                          onTap: () {},
                          currentFocusNode: phonenumber,
                          nextFocusNode: city,
                          fillColor: AppColors.hintColor,
                          hintText: AppWords.phonenumber.tr,
                          inputType: TextInputType.phone,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextField(
                          height: 65.h,
                          obscureText: false,
                          cursorColor: AppColors.hintColor,
                          onTap: () {},
                          currentFocusNode: city,
                          fillColor: AppColors.hintColor,
                          nextFocusNode: email,
                          hintText: AppWords.city.tr,
                          inputType: TextInputType.name,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextField(
                          height: 65.h,
                          obscureText: false,
                          cursorColor: AppColors.hintColor,
                          onTap: () {},
                          currentFocusNode: gavernment,
                          nextFocusNode: email,
                          fillColor: AppColors.hintColor,
                          hintText: 'Government ',
                          inputType: TextInputType.name,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextField(
                          height: 65.h,
                          obscureText: false,
                          cursorColor: AppColors.hintColor,
                          onTap: () {},
                          currentFocusNode: email,
                          fillColor: AppColors.hintColor,
                          nextFocusNode: brithDate,
                          hintText: AppWords.email.tr,
                          inputType: TextInputType.name,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextField(
                          height: 65.h,
                          obscureText: false,
                          cursorColor: AppColors.hintColor,
                          onTap: () {},
                          currentFocusNode: brithDate,
                          nextFocusNode: brithDate,
                          fillColor: AppColors.hintColor,
                          hintText: AppWords.birthdate.tr,
                          inputType: TextInputType.name,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppWords.gander.tr,
                                style: AppTextStyle.textStyle18Bold,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(children: [
                                Radio(
                                  activeColor: AppColors.primaryColor,
                                  value: option[0],
                                  groupValue: currentOption,
                                  onChanged: (value) {
                                    setState(() {
                                      currentOption = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  AppWords.male.tr,
                                  style: AppTextStyle.textStyle18Bold,
                                ),
                                Radio(
                                  activeColor: AppColors.primaryColor,
                                  value: option[1],
                                  groupValue: currentOption,
                                  onChanged: (value) {
                                    setState(() {
                                      currentOption = value.toString();
                                    });
                                  },
                                ),
                                Text(
                                  AppWords.female.tr,
                                  style: AppTextStyle.textStyle18Bold,
                                ),
                              ])
                            ],
                          ),
                        )
                      ],
                    )
                  : Column(
                      children: [
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('Make choice'),
                                content: SingleChildScrollView(
                                    child: Column(
                                  children: [
                                    ListTile(
                                      leading: const Icon(Icons.camera),
                                      title: const Text('Camera'),
                                      onTap: () {
                                        getImageFromCamera();
                                        goBack();
                                      },
                                    ),
                                    ListTile(
                                      leading: const Icon(Icons.image),
                                      title: const Text('gallery'),
                                      onTap: () {
                                        getImageFromGallery();
                                        goBack();
                                      },
                                    ),
                                  ],
                                )),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 20.h, right: 10.w, left: 10.w),
                            width: 106,
                            height: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.textColor, width: 4),
                              shape: BoxShape.circle,
                            ),
                            child: imageProfile == null
                                ? Center(
                                    child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: AppColors.textColor,
                                        size: 70.sp,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                    ],
                                  ))
                                : Image.file(imageProfile!, fit: BoxFit.fill),
                          ),
                        ),
                        Text('mahmoud ali',
                            style: AppTextStyle.textStyle24semiBold),
                        const SizedBox(
                          height: 15,
                        ),
                        const CustomSetting()
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> getImageFromGallery() async {
    final pickedFile = await ImagePicker.platform
        .getImageFromSource(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        imageProfile = (File(pickedFile.path));
      });
    }
  }

  Future<void> getImageFromCamera() async {
    final pickedFile = await ImagePicker.platform
        .getImageFromSource(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        imageProfile = (File(pickedFile.path));
      });
    }
  }
}
