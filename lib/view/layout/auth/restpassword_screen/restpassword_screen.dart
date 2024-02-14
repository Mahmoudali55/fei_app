import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/helper/utils/validator.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/customs_widgets/custom_logo/Custom_logo.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RestPasswordScreen extends StatefulWidget {
  const RestPasswordScreen({super.key});

  @override
  State<RestPasswordScreen> createState() => _RestPasswordScreenState();
}

class _RestPasswordScreenState extends State<RestPasswordScreen> {
  bool isAccepted = false;

  var confirmfocus = FocusNode();

  var passFocus = FocusNode();

  var confirmController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LogeScreen(
                image: AppImages.restpassword,
                title: AppWords.reset.tr,
                style: AppTextStyle.textStyle20regular),
            const SizedBox(height: 40),
            Text(
              AppWords.password.tr,
              style: AppTextStyle.textStyle20medium,
            ),
            CustomTextField(
                onTap: () {},
                controller: passwordController,
                hintText: 'Enter your password',
                inputType: TextInputType.visiblePassword,
                obscureText: true,
                textFieldValidType: TextFieldValidatorType.Password,
                suffixIcon: InkWell(
                    onTap: () {
                      isAccepted = !isAccepted;
                    },
                    child: isAccepted
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off)),
                currentFocusNode: passFocus,
                nextFocusNode: passFocus),
            Text(
              AppWords.confirmpassword.tr,
              style: AppTextStyle.textStyle20medium,
            ),
            CustomTextField(
                onTap: () {},
                controller: passwordController,
                hintText: 'Enter your password',
                inputType: TextInputType.visiblePassword,
                obscureText: true,
                textFieldValidType: TextFieldValidatorType.Password,
                suffixIcon: InkWell(
                    onTap: () {
                      isAccepted = !isAccepted;
                    },
                    child: isAccepted
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off)),
                currentFocusNode: passFocus,
                nextFocusNode: passFocus),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              title: AppWords.confirm.tr,
              onPress: () {
                goToScreen(screenNames: ScreenNames.restPasswordScreen);
              },
            )
          ],
        ),
      ),
    );
  }
}
