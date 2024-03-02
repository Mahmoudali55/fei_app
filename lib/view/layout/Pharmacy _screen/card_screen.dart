import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/layout/Pharmacy%20_screen/widgets/custom_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColors.backgroundColor,
            automaticallyImplyLeading: false,
            title: Text(
              AppWords.card.tr,
              style: AppTextStyle.textStyle18semiBold,
            ),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {
                  goBack();
                },
                icon: const Icon(Icons.close, color: AppColors.textColor),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const ItemCard(),
                const ItemCard(),
                const ItemCard(),
                const ItemCard(),
                const ItemCard(),
                const ItemCard(),
                const ItemCard(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    height: 46.h,
                    width: 1.sw,
                    color: AppColors.hintColor,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Text(
                            'SubTotal : ',
                            style: AppTextStyle.textStyle15regular,
                          ),
                          const Spacer(),
                          Text(
                            '250 EGP',
                            style: AppTextStyle.textStyle14regular,
                          ),
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  height: 44,
                  width: 287.w,
                  borderRadius: 7,
                  title: 'View  Cart ',
                  style: AppTextStyle.textStyle14bold
                      .copyWith(color: AppColors.backgroundColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  height: 44,
                  width: 287.w,
                  borderRadius: 7,
                  title: 'Checkout',
                  style: AppTextStyle.textStyle14medium,
                  backgroundColor: AppColors.backgroundColor,
                  borderColor: AppColors.textColor,
                )
              ],
            ),
          )),
    );
  }
}
