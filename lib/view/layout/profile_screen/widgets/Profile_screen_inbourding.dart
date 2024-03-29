import 'dart:io';

import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';

import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';

import 'package:fei_app/view/layout/profile_screen/widgets/Custom_setting_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreenOnboarding extends StatefulWidget {
  const ProfileScreenOnboarding({super.key});

  @override
  State<ProfileScreenOnboarding> createState() =>
      _ProfileScreenOnboardingState();
}

class _ProfileScreenOnboardingState extends State<ProfileScreenOnboarding> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              children: [
                Container(
                  clipBehavior: Clip.none,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.hintColor,
                  ),
                  child: TabBar(
                      unselectedLabelColor: AppColors.textColor,
                      unselectedLabelStyle: AppTextStyle.textStyle18Bold,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.primaryColor,
                      ),
                      labelColor: AppColors.backgroundColor,
                      labelStyle: AppTextStyle.textStyle18Bold,
                      indicatorSize: TabBarIndicatorSize.values[0],
                      indicatorColor: AppColors.primaryColor,
                      dividerHeight: -5,
                      indicatorPadding: const EdgeInsets.all(0),
                      tabs: [
                        Tab(
                          height: 30.h,
                          text: AppWords.userprofile.tr,
                        ),
                        Tab(
                          text: AppWords.setting.tr,
                        )
                      ]),
                ),
                Expanded(
                    child: TabBarView(
                  children: [
                    CustomProfile(),
                    SettingScreen(),
                  ],
                ))
              ],
            ),
          ),
        ));
  }
}

class CustomProfile extends StatefulWidget {
  const CustomProfile({super.key});

  @override
  State<CustomProfile> createState() => _CustomProfileState();
}

List<String> option = [
  'male',
  'female',
];

class _CustomProfileState extends State<CustomProfile> {
  String? selectedRadio;
  var name = FocusNode();
  var phonenumber = FocusNode();
  var city = FocusNode();
  var gavernment = FocusNode();
  var email = FocusNode();
  var brithDate = FocusNode();
  String currentOption = option[0];
  File? imageProfile;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
              margin: EdgeInsets.only(top: 20.h, right: 10.w, left: 10.w),
              width: 106,
              // height: 95,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.textColor, width: 4),
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
            height: 20,
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
            height: 20,
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
            height: 20,
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
            height: 20,
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
            height: 20,
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
            height: 20,
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

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  File? imageProfile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.h, right: 10.w, left: 10.w),
            width: 106,
            //height: 95,
            decoration: imageProfile == null
                ? BoxDecoration(
                    border: Border.all(color: AppColors.textColor, width: 4),
                    shape: BoxShape.circle)
                : BoxDecoration(
                    shape: BoxShape.circle,
                  ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                      onTap: () {
                        getImageFromCamera();
                      },
                      child: imageProfile == null
                          ? Container(
                              width: 40,
                              height: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.backgroundColor,
                                border: Border.all(
                                    color: AppColors.textColor, width: 1.5),
                              ),
                              child: Icon(Icons.camera_alt,
                                  color: AppColors.textColor, size: 20.sp),
                            )
                          : SizedBox()),
                ),
                imageProfile == null
                    ? Container(
                        child: Icon(
                          Icons.person,
                          color: AppColors.textColor,
                          size: 70.sp,
                        ),
                      )
                    : Container(
                        width: 130,
                        height: 95,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: FileImage(imageProfile!),
                              fit: BoxFit.fill),
                          shape: BoxShape.circle,
                        ),
                      )
                //child: Image.file(imageProfile!, fit: BoxFit.fill)),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text('mahmoud ali', style: AppTextStyle.textStyle24semiBold),
          const SizedBox(
            height: 60,
          ),
          const CustomSetting()
        ],
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
