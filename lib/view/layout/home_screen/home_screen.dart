import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:fei_app/helper/model/custom_card_model.dart';
import 'package:fei_app/helper/model/custom_home_model.dart';
import 'package:fei_app/helper/model/custom_item_model_profile.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/helper/utils/validator.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/customs_widgets/custom_card/custom_card.dart';
import 'package:fei_app/view/customs_widgets/custom_item_profile/custom_item_profile.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:fei_app/view/layout/home_screen/widgets/Custom_Pharmacies.dart';
import 'package:fei_app/view/layout/home_screen/widgets/custom_card_home.dart';
import 'package:fei_app/view/layout/home_screen/widgets/custom_home_loge.dart';
import 'package:fei_app/view/layout/home_screen/widgets/custom_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CustomHomeModel> list = [
    CustomHomeModel(
      image: AppImages.testIcon,
      title: AppWords.healthtest.tr,
    ),
    CustomHomeModel(
      image: AppImages.notifications,
      title: AppWords.medicinereminder.tr,
    ),
    CustomHomeModel(
      image: AppImages.prodction,
      title: AppWords.protection.tr,
    )
  ];
  List<CustomHomeModel> listPharmacies = [
    CustomHomeModel(
      image: AppImages.pharmacies,
      title: AppWords.seifPharmacy.tr,
    ),
    CustomHomeModel(
      image: AppImages.pharmacies,
      title: AppWords.seifPharmacy.tr,
    ),
    CustomHomeModel(
      image: AppImages.pharmacies,
      title: AppWords.seifPharmacy.tr,
    )
  ];
  List<CustomCardModel> cardList = [
    CustomCardModel(
      rate: 3,
      image: AppImages.doctors,
      title: AppWords.doctorsname.tr,
      subtitle: AppWords.doctorsname.tr,
    ),
    CustomCardModel(
      rate: 3,
      image: AppImages.doctors,
      title: AppWords.doctorsname.tr,
      subtitle: AppWords.doctorsname.tr,
    ),
    CustomCardModel(
      rate: 3,
      image: AppImages.doctors,
      title: AppWords.doctorsname.tr,
      subtitle: AppWords.doctorsname.tr,
    ),
    CustomCardModel(
      rate: 3,
      image: AppImages.doctors,
      title: AppWords.doctorsname.tr,
      subtitle: AppWords.doctorsname.tr,
    ),
  ];
  late PageController _pageController;
  int currentPage = 0;
  @override
  void initState() {
    _pageController = PageController();
    _pageController.addListener(() {
      currentPage = _pageController.page!.toInt();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const CustomHomeLoge(),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.hintColor.withOpacity(0.9), // لون الظل
                  )
                ]),
            child: CustomTextField(
              onTap: () {},
              currentFocusNode: FocusNode(),
              nextFocusNode: FocusNode(),
              fillColor: AppColors.backgroundColor,
              hintText: 'what do you need?',
              inputType: TextInputType.text,
              textFieldValidType: TextFieldValidatorType.Optional,
              prefixIcon: AppImages.searchIcon,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            AppWords.services.tr,
            style: AppTextStyle.textStyle22medium,
          ),
          SizedBox(
            height: 100.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return CustomServices(
                    customHomeModel: list[index],
                  );
                }),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppWords.doctors.tr,
                style: AppTextStyle.textStyle22medium,
              ),
              InkWell(
                onTap: () {
                  goToScreen(screenNames: ScreenNames.doctorsScreen);
                },
                child: Text(
                  AppWords.seeall.tr,
                  style: AppTextStyle.textStyle17medium
                      .copyWith(color: AppColors.primaryColor),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ExpandablePageView.builder(
            controller: _pageController,
            itemCount: cardList.length,
            itemBuilder: (context, index) {
              return CustomCardHome(
                currentPage: currentPage,
                cardModel: cardList[index],
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppWords.pharmacies.tr,
                style: AppTextStyle.textStyle22medium,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  AppWords.seeall.tr,
                  style: AppTextStyle.textStyle17medium
                      .copyWith(color: AppColors.primaryColor),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 200.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listPharmacies.length,
                itemBuilder: (context, index) {
                  return CustomPharmacies(
                    customHomeModel: listPharmacies[index],
                  );
                }),
          )
        ]),
      ),
    ));
  }
}
