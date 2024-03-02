import 'package:fei_app/helper/model/custom_pharmacy_model.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/helper/utils/validator.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_card_pharmacy/custom_card_pharmacy.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:fei_app/view/layout/Pharmacy%20_screen/card_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeHealthScreen extends StatefulWidget {
  const HomeHealthScreen({super.key});

  @override
  State<HomeHealthScreen> createState() => _HomeHealthScreenState();
}

class _HomeHealthScreenState extends State<HomeHealthScreen>
    with TickerProviderStateMixin {
  int _currentPage = 0;

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: const CardScreen(),
        appBar: AppBar(
          leading: const BackButtonCustom(),
          title: Text(
            AppWords.homehealth.tr,
            style: AppTextStyle.textStyle20bold,
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                onPressed: () {
                  _scaffoldKey.currentState!.openEndDrawer();
                },
                icon: Stack(
                  children: [
                    const Icon(
                      Icons.shopping_cart,
                      color: AppColors.textColor,
                      size: 30,
                    ),
                    Positioned(
                      left: 12,
                      bottom: 15,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: const ShapeDecoration(
                          shape: CircleBorder(),
                          color: Colors.red,
                        ),
                        child: const Center(
                          child: Text(
                            '2',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              CustomTextField(
                height: 56.h,
                onTap: () {},
                fieldWidth: 450.w,
                currentFocusNode: FocusNode(),
                nextFocusNode: FocusNode(),
                fillColor: AppColors.hintColor,
                hintText: 'search for a drug ?',
                inputType: TextInputType.text,
                textFieldValidType: TextFieldValidatorType.Optional,
                prefixIcon: AppImages.searchIcon,
              ),
              SizedBox(
                height: 20.h,
              ),
              TabBar(
                splashBorderRadius: BorderRadius.circular(15),
                splashFactory: NoSplash.splashFactory,
                indicatorColor: AppColors.backgroundColor,
                labelStyle: AppTextStyle.textStyle16semiBold,
                labelPadding: const EdgeInsets.symmetric(horizontal: 5),
                indicatorSize: TabBarIndicatorSize.tab,
                controller: _tabController,
                labelColor: AppColors.backgroundColor,
                onTap: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                tabs: [
                  Tab(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: _currentPage == 0
                            ? const Color(0xFF4DB297)
                            : AppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(15),
                        border:
                            Border.all(color: AppColors.primaryColor, width: 2),
                      ),
                      child: const Center(child: Text('All')),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: _currentPage == 1
                            ? const Color(0xFF4DB297)
                            : AppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(15),
                        border:
                            Border.all(color: AppColors.primaryColor, width: 2),
                      ),
                      child: Center(
                          child: Text(' Diabetes care',
                              maxLines: 1,
                              style: _currentPage == 1
                                  ? AppTextStyle.textStyle14semiBold.copyWith(
                                      color: AppColors.backgroundColor)
                                  : AppTextStyle.textStyle14semiBold)),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: _currentPage == 2
                            ? const Color(0xFF4DB297)
                            : AppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(15),
                        border:
                            Border.all(color: AppColors.primaryColor, width: 2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Text('BloodpressureMonitors',
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  style: _currentPage == 2
                                      ? AppTextStyle.textStyle14semiBold
                                          .copyWith(
                                              color: AppColors.backgroundColor)
                                      : AppTextStyle.textStyle14semiBold)),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: _currentPage == 3
                            ? const Color(0xFF4DB297)
                            : AppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(15),
                        border:
                            Border.all(color: AppColors.primaryColor, width: 2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Text("Thermometers",
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  style: _currentPage == 3
                                      ? AppTextStyle.textStyle14semiBold
                                          .copyWith(
                                              color: AppColors.backgroundColor)
                                      : AppTextStyle.textStyle14semiBold)),
                        ],
                      ),
                    ),
                  ),
                ],
                dividerHeight: 0,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Wrap(children: [
                            ...List.generate(
                              11,
                              (index) => CustomCardpharmacy(
                                Active: false,
                                pharmacyModel: PharmacyModel(
                                    image: AppImages.diabetes,
                                    title: 'Adol 500mg',
                                    price: '500',
                                    subtitle: ' 24 tablets'),
                              ),
                            ),
                          ])
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Wrap(children: [
                            ...List.generate(
                              11,
                              (index) => CustomCardpharmacy(
                                Active: false,
                                pharmacyModel: PharmacyModel(
                                    image: AppImages.diabetes,
                                    title: 'mahmoud',
                                    price: '500',
                                    subtitle: '500'),
                              ),
                            )
                          ])
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Wrap(children: [
                            ...List.generate(
                              11,
                              (index) => CustomCardpharmacy(
                                Active: false,
                                pharmacyModel: PharmacyModel(
                                    subtitle: '500',
                                    image: AppImages.diabetes,
                                    title: 'mahmoud',
                                    price: '500'),
                              ),
                            )
                          ])
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Wrap(children: [
                            ...List.generate(
                              11,
                              (index) => CustomCardpharmacy(
                                Active: false,
                                pharmacyModel: PharmacyModel(
                                    subtitle: ' 24 tablets',
                                    image: AppImages.thermomet,
                                    title: 'Adol ',
                                    price: '500 '),
                              ),
                            )
                          ])
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
