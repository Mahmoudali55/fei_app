import 'package:fei_app/helper/model/custom_card_model.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_card/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PharmacyScreen extends StatefulWidget {
  const PharmacyScreen({super.key});

  @override
  State<PharmacyScreen> createState() => _PharmacyScreenState();
}

class _PharmacyScreenState extends State<PharmacyScreen> {
  List<CustomCardModel> cardList = [
    CustomCardModel(
      image: AppImages.pharmacies,
      title: AppWords.seifPharmacy.tr,
      subtitle: AppWords.locationdoctor,
      rate: 3,
      onTap: () {
        goToScreen(screenNames: ScreenNames.pharmacyprofile);
      },
    ),
    CustomCardModel(
      image: AppImages.pharmacies,
      title: AppWords.seifPharmacy.tr,
      subtitle: AppWords.locationdoctor,
      rate: 3,
      onTap: () {
        goToScreen(screenNames: ScreenNames.pharmacyprofile);
      },
    ),
    CustomCardModel(
      image: AppImages.pharmacies,
      title: AppWords.seifPharmacy.tr,
      subtitle: AppWords.locationdoctor,
      rate: 3,
      onTap: () {
        goToScreen(screenNames: ScreenNames.pharmacyprofile);
      },
    ),
    CustomCardModel(
      image: AppImages.pharmacies,
      title: AppWords.seifPharmacy.tr,
      subtitle: AppWords.locationdoctor,
      rate: 3,
      onTap: () {
        goToScreen(screenNames: ScreenNames.pharmacyprofile);
      },
    ),
    CustomCardModel(
      image: AppImages.pharmacies,
      title: AppWords.seifPharmacy.tr,
      subtitle: AppWords.locationdoctor,
      rate: 3,
      onTap: () {
        goToScreen(screenNames: ScreenNames.pharmacyprofile);
      },
    ),
    CustomCardModel(
      image: AppImages.pharmacies,
      title: AppWords.seifPharmacy.tr,
      subtitle: AppWords.locationdoctor,
      rate: 3,
      onTap: () {
        goToScreen(screenNames: ScreenNames.pharmacyprofile);
      },
    ),
    CustomCardModel(
      image: AppImages.pharmacies,
      title: AppWords.seifPharmacy.tr,
      subtitle: AppWords.locationdoctor,
      rate: 3,
      onTap: () {
        goToScreen(screenNames: ScreenNames.pharmacyprofile);
      },
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonCustom(),
        title:
            Text(AppWords.pharmacies.tr, style: AppTextStyle.textStyle22medium),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(children: [
            Divider(
              color: AppColors.textColor.withOpacity(.5),
              thickness: 1,
              height: 1,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return CustomCard(
                      cardModel: cardList[index],
                    );
                  },
                  itemCount: cardList.length),
            )
          ]),
        ),
      ),
    );
  }
}
