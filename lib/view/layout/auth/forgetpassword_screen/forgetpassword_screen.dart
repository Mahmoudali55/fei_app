import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/helper/utils/validator.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/customs_widgets/custom_logo/Custom_logo.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  var emailController = TextEditingController();
  var email = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LogeScreen(
            image: AppImages.forgetPassword,
            title: AppWords.forget.tr,
            style: AppTextStyle.textStyle20regular,
          ),
          const SizedBox(height: 40),
          Text(
            AppWords.email.tr,
            style: AppTextStyle.textStyle20medium,
          ),
          CustomTextField(
              onTap: () {},
              controller: emailController,
              hintText: 'Enter your Email',
              inputType: TextInputType.emailAddress,
              textFieldValidType: TextFieldValidatorType.Email,
              currentFocusNode: email,
              nextFocusNode: email),
          const SizedBox(height: 60),
          CustomButton(
            title: AppWords.send.tr,
            onPress: () {
              goToScreen(screenNames: ScreenNames.restPasswordScreen);
            },
          )
        ],
      ),
    ));
  }
}
