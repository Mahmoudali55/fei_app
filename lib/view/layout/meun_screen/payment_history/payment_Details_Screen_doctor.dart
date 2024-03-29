import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/layout/meun_screen/payment_history/payment_history.dart';
import 'package:fei_app/view/layout/meun_screen/payment_history/widgets/custom_loge_payment.dart';
import 'package:fei_app/view/layout/meun_screen/payment_history/widgets/custom_payment_history.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class PaymentDetailsDoctor extends StatelessWidget {
  const PaymentDetailsDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment History', style: AppTextStyle.textStyle20bold),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CumtomLogePayment(
              image: AppImages.doctors,
              title: AppWords.doctorsname.tr,
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 1.5,
              color: AppColors.textColor.withOpacity(.2),
            ),
            Wrap(children: [
              ...List.generate(5, (index) => ItemPaymentHistory()),
            ]),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(children: [
                ListTile(
                  leading:
                      Icon(Icons.price_change, color: AppColors.primaryColor),
                  title: Text(
                    'Total',
                    style: AppTextStyle.textStyle16light,
                  ),
                  trailing: Text('${2900}EGP',
                      style: AppTextStyle.textStyle18medium
                          .copyWith(color: AppColors.primaryColor)),
                ),
                ListTile(
                  leading: Image.asset(AppImages.paymentIcon,
                      color: AppColors.primaryColor),
                  title: Text(
                    'Total',
                    style: AppTextStyle.textStyle16light,
                  ),
                  trailing: Text('Visa',
                      style: AppTextStyle.textStyle18medium
                          .copyWith(color: AppColors.primaryColor)),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
