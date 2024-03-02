import 'package:fei_app/helper/model/custom_model_payment.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/layout/payment_metods_screen/confirm_payment.dart';
import 'package:fei_app/view/layout/payment_metods_screen/payment_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PaymentMetodsScreen extends StatefulWidget {
  const PaymentMetodsScreen({super.key});

  @override
  State<PaymentMetodsScreen> createState() => _PaymentMetodsScreenState();
}

class _PaymentMetodsScreenState extends State<PaymentMetodsScreen> {
  bool isAccepted = true;
  int selectedIndex = -1;
  List<PaymentModel> paymentList = [
    PaymentModel(
        title: 'apple', subtitle: 'Balance: PKR2,6000', image: AppImages.apple),
    PaymentModel(
        title: 'Master card',
        subtitle: '**** **** 4242 4242',
        image: AppImages.master),
    PaymentModel(
        title: 'visa', subtitle: '**** **** 4242 4242', image: AppImages.visa),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          title: Text(AppWords.paymentMethod.tr,
              style: AppTextStyle.textStyle22bold),
          centerTitle: true,
          leading: const BackButtonCustom(),
          backgroundColor: AppColors.backgroundColor,
          elevation: 0,
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                goToScreen(screenNames: ScreenNames.addCardPayment);
              },
              icon: const CircleAvatar(
                  radius: 12,
                  backgroundColor: AppColors.primaryColor,
                  child: Icon(Icons.add, color: AppColors.backgroundColor)),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Wrap(runSpacing: 10, children: [
                ...List.generate(
                  3,
                  (index) => PymentMethodsItem(
                    paymentModel: paymentList[index],
                    isAccepted: index == selectedIndex,
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                )
              ]),
              SizedBox(height: 20.h),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 61.h,
                width: 390.w,
                decoration: BoxDecoration(
                  color: AppColors.hintColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(AppImages.applay),
                      SizedBox(width: 10.w),
                      Text(
                        'Proma Code ',
                        style: AppTextStyle.textStyle20bold,
                      ),
                      SizedBox(width: 90.w),
                      CustomButton(
                        title: 'Apply',
                        height: 50.w,
                        width: 100.w,
                        onPress: () {},
                        style: AppTextStyle.textStyle14medium
                            .copyWith(color: AppColors.backgroundColor),
                      ),
                      SizedBox(width: 10.w),
                    ]),
              ),
              SizedBox(height: 40.h),
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: 'Note :', style: AppTextStyle.textStyle18medium),
                TextSpan(
                    text:
                        ' Half of the paid amount is paid and\n the second half is paid to the doctor. \nIn the event of cancellation of the appointment\n, we will refund the amount paid to you. ',
                    style: AppTextStyle.textStyle16light)
              ])),
              SizedBox(height: 200.h),
              CustomButton(
                  title: 'pay',
                  onPress: () {
                    confirmpayment(context);
                  },
                  style: AppTextStyle.textStyle24medium
                      .copyWith(color: AppColors.backgroundColor))
            ],
          ),
        ));
  }
}
