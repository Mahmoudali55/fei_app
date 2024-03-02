import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/helper/utils/validator.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:fei_app/view/layout/meun_screen/help_Center_Screen/widgets/custom_Contactus.dart';
import 'package:fei_app/view/layout/meun_screen/help_Center_Screen/widgets/custome_fAq_screen.dart';
import 'package:fei_app/view/layout/meun_screen/help_Center_Screen/widgets/custome_help_center.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButtonCustom(),
          title: Text(AppWords.helpCenter.tr,
              style: AppTextStyle.textStyle24semiBold),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: Column(children: [
            CustomTextField(
              onTap: () {},
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
              labelColor: AppColors.primaryColor,
              indicatorColor: AppColors.primaryColor,
              labelStyle: AppTextStyle.textStyle24medium,
              unselectedLabelStyle: AppTextStyle.textStyle24medium,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: const [
                Tab(text: 'FAQ'),
                Tab(text: 'Contact Us'),
              ],
              indicator: null, // إزالة المؤشر
            ),
            const Expanded(
              child: TabBarView(
                children: [CustomeHelpCenter(), CustomContactUs()],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
