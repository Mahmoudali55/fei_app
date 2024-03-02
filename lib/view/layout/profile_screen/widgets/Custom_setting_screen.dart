import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/layout/profile_screen/widgets/Custom_setting_screen_item.dart';
import 'package:fei_app/view/layout/profile_screen/widgets/Profile_screen_inbourding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSetting extends StatelessWidget {
  const CustomSetting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            customSettingItem(
              ontap: () {},
              image: AppImages.edite,
              text: AppWords.edit.tr,
              Scrren: ScreenNames.editprofileScreen,
            ),
            const SizedBox(
              height: 40,
            ),
            customSettingItem(
              ontap: () {},
              image: AppImages.keypassword,
              text: AppWords.changepassword.tr,
              Scrren: ScreenNames.changepasswordScreen,
            ),
            const SizedBox(
              height: 40,
            ),
            customSettingItem(
              ontap: () {},
              image: AppImages.email,
              text: AppWords.chageemail.tr,
              Scrren: ScreenNames.confirmPasswordScreen,
            ),
            const SizedBox(
              height: 40,
            ),
            customSettingItem(
              ontap: () {},
              image: AppImages.schedul,
              text: AppWords.schedulele.tr,
              Scrren: '',
            ),
            const SizedBox(
              height: 40,
            ),
            customSettingItem(
              ontap: () {},
              image: AppImages.card.tr,
              text: AppWords.payment.tr,
              Scrren: ScreenNames.paymentMethod,
            ),
            const SizedBox(
              height: 40,
            ),
            customSettingItem(
              ontap: () {},
              image: AppImages.logout.tr,
              text: AppWords.logout.tr,
              Scrren: ScreenNames.loginScreen,
            ),
          ],
        ));
  }
}
