import 'package:fei_app/helper/model/custom_home_model.dart';
import 'package:fei_app/helper/model/custom_pharmacy_model.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/helper/utils/validator.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_card_pharmacy/custom_card_pharmacy.dart';
import 'package:fei_app/view/customs_widgets/custom_logo/Custom_logo.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:fei_app/view/layout/home_screen/widgets/Custom_Pharmacies.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PharmacyProfile extends StatefulWidget {
  const PharmacyProfile({super.key});

  @override
  State<PharmacyProfile> createState() => _PharmacyProfileState();
}

class _PharmacyProfileState extends State<PharmacyProfile> {
  List<PharmacyModel> pharmacies = [
    PharmacyModel(
        image: AppImages.adol,
        title: 'mahmoud',
        price: '2000',
        subtitle: '500'),
    PharmacyModel(
        image: AppImages.adol,
        title: 'mahmoud',
        price: '2000',
        subtitle: '500'),
    PharmacyModel(
        image: AppImages.adol,
        title: 'mahmoud',
        price: '2000',
        subtitle: '500'),
    PharmacyModel(
        image: AppImages.adol,
        title: 'mahmoud',
        price: '2000',
        subtitle: '500'),
    PharmacyModel(
        image: AppImages.adol,
        title: 'mahmoud',
        price: '2000',
        subtitle: '500 mg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          centerTitle: true,
          leading: BackButtonCustom(),
          title: Text(
            AppWords.seifPharmacy.tr,
            textAlign: TextAlign.center,
            style: AppTextStyle.textStyle20bold,
          ),
          elevation: 0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: AppWords.hello.tr,
                  style: AppTextStyle.textStyle16regular),
              TextSpan(
                  text: 'mahmoud ali',
                  style: AppTextStyle.textStyle16regular
                      .copyWith(color: AppColors.primaryColor))
            ])),
            Text(
              AppWords.findyourmedicine.tr,
              style: AppTextStyle.textStyle16semiBold,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              height: 56.h,
              onTap: () {},
              fieldWidth: 450.w,
              currentFocusNode: FocusNode(),
              nextFocusNode: FocusNode(),
              fillColor: AppColors.hintColor,
              hintText: 'search',
              inputType: TextInputType.text,
              textFieldValidType: TextFieldValidatorType.Optional,
              prefixIcon: AppImages.searchIcon,
            ),
            SizedBox(
              height: 20.h,
            ),
            Image.asset(AppImages.medicine),
            SizedBox(
              height: 20.h,
            ),
            Text(
              AppWords.shopbycategories.tr,
              style: AppTextStyle.textStyle20bold,
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomPharmacies(
                  customHomeModel: CustomHomeModel(
                onTap: () {
                  goToScreen(screenNames: ScreenNames.medicationsScreen);
                },
                width: 160.w,
                border: Border.all(color: Colors.orange, width: 1),
                image: AppImages.medicines,
                title: AppWords.medications.tr,
              )),
              CustomPharmacies(
                  customHomeModel: CustomHomeModel(
                onTap: () {
                  goToScreen(screenNames: ScreenNames.vitaminsScreen);
                },
                width: 160.w,
                border: Border.all(color: AppColors.primaryColor, width: 1),
                image: AppImages.vitamins,
                title: AppWords.vitamins.tr,
              ))
            ]),
            Center(
              child: CustomPharmacies(
                  customHomeModel: CustomHomeModel(
                onTap: () {
                  goToScreen(screenNames: ScreenNames.homeHealthScreen);
                },
                width: 340.w,
                border: Border.all(color: AppColors.thirdColor, width: 1),
                image: AppImages.homehealth,
                title: AppWords.homehealth.tr,
              )),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              AppWords.bestseller.tr,
              style: AppTextStyle.textStyle20bold,
            ),
            SizedBox(
              height: 10.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(children: [
                ...List.generate(
                    pharmacies.length,
                    (index) => CustomCardpharmacy(
                          Active: true,
                          pharmacyModel: pharmacies[index],
                        ))
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
