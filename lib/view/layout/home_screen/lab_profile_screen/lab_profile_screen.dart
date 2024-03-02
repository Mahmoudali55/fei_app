import 'package:fei_app/helper/model/custom_item_model_profile.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/layout/home_screen/lab_profile_screen/widgets/lab_profile_body.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LabProfileScreen extends StatelessWidget {
  const LabProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomLabProfile(
        specialist: '',
        buttonTitle: AppWords.setAppointment.tr,
        itemProfileModel: CustomItemProfileModel(
            image: AppImages.technoScan,
            name: AppWords.technoScan.tr,
            location: AppWords.location.tr,
            price: AppWords.price,
            patientsNumbers: AppWords.patientsNumber.tr,
            experience: AppWords.experienceNumber.tr,
            rate: AppWords.rateNumber.tr,
            about: AppWords.aboutlab.tr),
      ),
    );
  }
}
