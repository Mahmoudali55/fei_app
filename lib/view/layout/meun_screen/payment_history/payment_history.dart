import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
              leading: const BackButtonCustom(),
              title: Text('Payment History',
                  style: AppTextStyle.textStyle22medium),
              centerTitle: true,
              bottom: TabBar(
                  labelColor: AppColors.textColor,
                  indicatorColor: AppColors.primaryColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelStyle: AppTextStyle.textStyle18medium,
                  tabs: [
                    Tab(text: 'Doctors'),
                    Tab(text: 'Labs'),
                    Tab(text: 'Pharmacy'),
                  ])),
          body: TabBarView(children: [
            Wrap(children: [
              ...List.generate(
                10,
                (index) => CustomPaymentHistory(
                    image: AppImages.doctors,
                    title: AppWords.doctorsname.tr,
                    subtitle: AppWords.departmentname.tr,
                    subtitle2: '24-12-2022',
                    onTap: () {
                      goToScreen(
                          screenNames: ScreenNames.paymentHistoryDetails);
                    }),
              )
            ]),
            Wrap(children: [
              ...List.generate(
                10,
                (index) => CustomPaymentHistory(
                    image: AppImages.technoScan,
                    title: AppWords.technoScan.tr,
                    subtitle: 'Blood Test',
                    subtitle2: '24-12-2022',
                    onTap: () {
                      goToScreen(
                          screenNames: ScreenNames.paymentHistoryDetailsLabs);
                    }),
              )
            ]),
            Wrap(children: [
              ...List.generate(
                5,
                (index) => CustomPaymentHistory(
                    image: AppImages.pharmacies,
                    title: AppWords.pharmacies.tr,
                    subtitle2: '24-12-2022',
                    onTap: () {
                      goToScreen(
                          screenNames:
                              ScreenNames.paymentHistoryDetailsPharmacy);
                    }),
              )
            ]),
          ])),
    );
  }
}

class CustomPaymentHistory extends StatelessWidget {
  const CustomPaymentHistory({
    super.key,
    required this.image,
    required this.title,
    this.subtitle,
    required this.subtitle2,
    this.onTap,
  });
  final String image;
  final String title;
  final String? subtitle;
  final String subtitle2;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(),
        color: AppColors.backgroundColor,
        child: Container(
            padding: const EdgeInsets.all(10),
            height: 100,
            margin: const EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.primaryColor, width: 2),
            ),
            child: Row(children: [
              Image.asset(
                image,
              ),
              const SizedBox(width: 15),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  title,
                  style: AppTextStyle.textStyle18Bold,
                ),
                Text(
                  subtitle ?? '',
                  style: AppTextStyle.textStyle16light,
                ),
                Text(
                  subtitle2,
                  style: AppTextStyle.textStyle16light,
                )
              ])
            ])),
      ),
    );
  }
}
