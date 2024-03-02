import 'dart:io';

import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_settings.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  File? imageProfile;
  bool isAccepted = true;
  int currentPage = 0;
  var name = FocusNode();
  var phonenumber = FocusNode();
  var city = FocusNode();
  var email = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: SingleChildScrollView(
        child: Column(children: [
          const Align(alignment: Alignment.topLeft, child: BackButtonCustom()),
          Container(
            margin: EdgeInsets.only(top: 25.h, right: 10.w, left: 10.w),
            width: 106,
            height: 95,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.textColor, width: 4),
              shape: BoxShape.circle,
            ),
            child: imageProfile == null
                ? Center(
                    child: Container(
                    decoration: const ShapeDecoration(shape: CircleBorder()),
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
                    ),
                  ))
                : Container(
                    width: 106,
                    height: 95,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.file(
                      imageProfile!,
                      fit: BoxFit.fill,
                    ),
                  ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            InkWell(
              onTap: () {
                setState(() {
                  getImageFromGallery();
                  goBack();
                  currentPage = 0;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                ),
                width: 125.w,
                height: 44.h,
                decoration: BoxDecoration(
                  color: isAccepted == currentPage
                      ? AppColors.primaryColor
                      : AppColors.backgroundColor,
                  border: Border.all(color: AppColors.primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  AppWords.choosefromlibrary.tr,
                  style: isAccepted == currentPage
                      ? AppTextStyle.textStyle11medium
                          .copyWith(color: AppColors.backgroundColor)
                      : AppTextStyle.textStyle11medium,
                ),
              ),
            ),
            SizedBox(
              width: 30.w,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  getImageFromCamera();
                });
              },
              child: Container(
                width: 117.w,
                height: 44.h,
                decoration: BoxDecoration(
                  color:
                      isAccepted ? AppColors.primaryColor : AppColors.hintColor,
                  border: Border.all(color: AppColors.primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  AppWords.takeaphoto.tr,
                  style: isAccepted
                      ? AppTextStyle.textStyle13medium
                          .copyWith(color: AppColors.backgroundColor)
                      : AppTextStyle.textStyle13medium,
                )),
              ),
            ),
          ]),
          const SizedBox(
            height: 40,
          ),
          CustomTextField(
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
            cursorColor: AppColors.hintColor,
            onTap: () {},
            currentFocusNode: phonenumber,
            nextFocusNode: city,
            hintText: AppWords.phonenumber.tr,
            fillColor: AppColors.hintColor,
            inputType: TextInputType.phone,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
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
            cursorColor: AppColors.hintColor,
            onTap: () {},
            currentFocusNode: email,
            fillColor: AppColors.hintColor,
            nextFocusNode: email,
            hintText: AppWords.email.tr,
            inputType: TextInputType.name,
          ),
          const SizedBox(
            height: 70,
          ),
          CustomButton(
            style: AppTextStyle.textStyle24medium
                .copyWith(color: AppColors.backgroundColor),
            title: AppWords.save.tr,
            onPress: () {},
          )
        ]),
      ),
    ));
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
