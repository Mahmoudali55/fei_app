import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:fei_app/helper/model/custom_card_model.dart';
import 'package:fei_app/helper/model/custom_home_model.dart';
import 'package:fei_app/helper/model/custom_item_model_profile.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_settings.dart';
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
import 'package:fei_app/view/layout/home_screen/widgets/custom_drawer.dart';
import 'package:fei_app/view/layout/home_screen/widgets/custom_home_loge.dart';
import 'package:fei_app/view/layout/home_screen/widgets/custom_services.dart';

import 'package:fei_app/view/layout/meun_screen/meun_screen/meun_screen/meun_screen.dart';
import 'package:fei_app/view/layout/meun_screen/meun_screen/meun_screen/meun_screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CustomHomeModel> listservices = [
    CustomHomeModel(
      onTap: () {
        goToScreen(screenNames: ScreenNames.healthTestScreen);
      },
      width: 120.w,
      height: 98,
      border: Border.all(color: AppColors.primaryColor, width: 2),
      image: AppImages.testIcon,
      title: AppWords.healthtest.tr,
    ),
    CustomHomeModel(
      onTap: () {
        goToScreen(screenNames: ScreenNames.preventationScreen);
      },
      width: 120.w,
      height: 98,
      border: Border.all(color: AppColors.primaryColor, width: 2),
      image: AppImages.prodction,
      title: AppWords.protection.tr,
    ),
    CustomHomeModel(
      onTap: () {
        goToScreen(screenNames: ScreenNames.medicineReminder);
      },
      width: 120.w,
      height: 98,
      border: Border.all(color: AppColors.primaryColor, width: 2),
      image: AppImages.medicenreminder,
      title: AppWords.medicinereminder.tr,
    )
  ];
  List<CustomHomeModel> listPharmacies = [
    CustomHomeModel(
      width: 120.w,
      height: 127.h,
      border: Border.all(color: AppColors.primaryColor, width: 2),
      image: AppImages.pharmacies,
      title: AppWords.seifPharmacy.tr,
    ),
    CustomHomeModel(
      width: 120.w,
      height: 127.h,
      border: Border.all(color: AppColors.primaryColor, width: 2),
      image: AppImages.pharmacies,
      title: AppWords.seifPharmacy.tr,
    ),
    CustomHomeModel(
      width: 120.w,
      height: 127.h,
      border: Border.all(color: AppColors.primaryColor, width: 2),
      image: AppImages.pharmacies,
      title: AppWords.seifPharmacy.tr,
    )
  ];
  List<CustomCardModel> cardList = [
    CustomCardModel(
      rate: 3,
      image: AppImages.doctors,
      title: AppWords.doctorsname.tr,
      subtitle: AppWords.departmentname.tr,
    ),
    CustomCardModel(
      rate: 3,
      image: AppImages.doctors,
      title: AppWords.doctorsname.tr,
      subtitle: AppWords.departmentname.tr,
    ),
    CustomCardModel(
      rate: 3,
      image: AppImages.doctors,
      title: AppWords.doctorsname.tr,
      subtitle: AppWords.departmentname.tr,
    ),
    CustomCardModel(
      rate: 3,
      image: AppImages.doctors,
      title: AppWords.doctorsname.tr,
      subtitle: AppWords.departmentname.tr,
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

  GlobalKey<ScaffoldState> menuDrawer = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: menuDrawer,
        // drawer: MeunScreen(),
        drawerEnableOpenDragGesture: true,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomHomeLoge(onTap: () {
                // menuDrawer.currentState!.openDrawer();
                goToScreen(screenNames: ScreenNames.meunScreen);
              }),
              Container(
                height: 50.h,
                width: 398.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.textColor, width: 1.1),
                ),
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
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listservices.length,
                    itemBuilder: (context, index) {
                      return CustomServices(
                        customHomeModel: listservices[index],
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
                    onTap: () {
                      goToScreen(screenNames: ScreenNames.pharmaciesscreen);
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
              SizedBox(
                height: 160.h,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
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
