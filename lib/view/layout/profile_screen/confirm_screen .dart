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

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({super.key});

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  bool isAccepted = true;
  bool Accepted = true;

  var emailfocus = FocusNode();

  var passFocus = FocusNode();

  var newpassFocus = FocusNode();

  var newemailFocus = FocusNode();

  var confirmController = TextEditingController();

  var emailController = TextEditingController();
  var newemailController = TextEditingController();

  var confirmpasswordController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LogeScreen(
                  image: AppImages.changepassword,
                  title: '',
                  style: AppTextStyle.textStyle20regular),
              Text(
                AppWords.currentemail.tr,
                style: AppTextStyle.textStyle20medium,
              ),
              CustomTextField(
                  onTap: () {},
                  controller: emailController,
                  hintText: ' your Email',
                  inputType: TextInputType.emailAddress,
                  textFieldValidType: TextFieldValidatorType.Email,
                  currentFocusNode: emailfocus,
                  nextFocusNode: passFocus),
              const SizedBox(
                height: 10,
              ),
              Text(
                AppWords.password.tr,
                style: AppTextStyle.textStyle20medium,
              ),
              CustomTextField(
                  onTap: () {},
                  controller: passwordController,
                  hintText: 'Enter your password',
                  inputType: TextInputType.visiblePassword,
                  obscureText: isAccepted,
                  textFieldValidType: TextFieldValidatorType.Password,
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          isAccepted = !isAccepted;
                        });
                      },
                      child: isAccepted
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility)),
                  currentFocusNode: passFocus,
                  nextFocusNode: newemailFocus),
              const SizedBox(
                height: 10,
              ),
              Text(
                AppWords.newemail.tr,
                style: AppTextStyle.textStyle20medium,
              ),
              CustomTextField(
                  onTap: () {},
                  controller: newemailController,
                  hintText: 'Enter your Email',
                  inputType: TextInputType.emailAddress,
                  textFieldValidType: TextFieldValidatorType.Email,
                  currentFocusNode: newemailFocus,
                  nextFocusNode: newpassFocus),
              const SizedBox(
                height: 10,
              ),
              Text(
                AppWords.newemailpassword.tr,
                style: AppTextStyle.textStyle20medium,
              ),
              CustomTextField(
                  onTap: () {},
                  controller: confirmController,
                  hintText: 'Enter your password',
                  inputType: TextInputType.visiblePassword,
                  obscureText: isAccepted,
                  textFieldValidType: TextFieldValidatorType.Password,
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          Accepted = !Accepted;
                        });
                      },
                      child: Accepted
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility)),
                  currentFocusNode: newpassFocus,
                  nextFocusNode: newpassFocus),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                style: AppTextStyle.textStyle24medium
                    .copyWith(color: Colors.white),
                title: AppWords.confirm.tr,
                onPress: () {
                  /// goToScreen(screenNames: ScreenNames.restPasswordScreen);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
