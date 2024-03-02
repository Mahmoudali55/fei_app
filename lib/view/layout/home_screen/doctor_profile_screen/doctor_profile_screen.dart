import 'package:fei_app/helper/model/custom_item_model_profile.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_item_profile/custom_item_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorProfileScreen extends StatelessWidget {
  const DoctorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomItemProfile(
        onPress: () {
          goToScreen(screenNames: ScreenNames.doctorAppointment);
        },
        specialist: AppWords.pulmonologist.tr,
        buttonTitle: AppWords.setAppointment.tr,
        itemProfileModel: CustomItemProfileModel(
            image: AppImages.doctors,
            name: AppWords.doctorsname.tr,
            location: AppWords.location.tr,
            price: AppWords.price.tr,
            patientsNumbers: AppWords.patientsNumber.tr,
            experience: AppWords.experienceNumber.tr,
            rate: AppWords.rateNumber.tr,
            about: AppWords.aboutDoctor.tr),
      ),
    );
  }
}
