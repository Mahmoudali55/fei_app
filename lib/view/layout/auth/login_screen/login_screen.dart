import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/helper/utils/validator.dart';

import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/customs_widgets/custom_logo/Custom_logo.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:fei_app/view/layout/auth/login_screen/cubit/login_cubit.dart';
import 'package:fei_app/view/layout/splash_screen/logo_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:get/get_utils/get_utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var username = FocusNode();
  var passFocus = FocusNode();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  String? message;
  @override
  Widget build(BuildContext context) {
    final dynamic argument = Get.arguments;

    if (argument is String) {
      message = argument;
    }
    return Scaffold(
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state is LoginInitial) {
                  return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.h,
                      ),
                      child: Form(
                        key: formKey,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: LogeScreen(
                                  image: AppImages.login,
                                  title: AppWords.welcome.tr,
                                  style: AppTextStyle.textStyle30semiBold,
                                ),
                              ),
                              Text(
                                AppWords.username.tr,
                                style: AppTextStyle.textStyle20medium,
                              ),
                              CustomTextField(
                                  height: 90.h,
                                  onTap: () {},
                                  obscureText: false,
                                  controller: usernameController,
                                  hintText: 'Enter your username',
                                  hintStyle: AppTextStyle.textStyle14light,
                                  fillColor: AppColors.hintColor,
                                  inputType: TextInputType.emailAddress,
                                  textFieldValidType:
                                      TextFieldValidatorType.Email,
                                  currentFocusNode: username,
                                  nextFocusNode: passFocus),
                              Text(
                                AppWords.password.tr,
                                style: AppTextStyle.textStyle20medium,
                              ),
                              CustomTextField(
                                  height: 90.h,
                                  onTap: () {},
                                  controller: passwordController,
                                  hintText: 'Enter your password',
                                  hintStyle: AppTextStyle.textStyle14light,
                                  fillColor: AppColors.hintColor,
                                  inputType: TextInputType.visiblePassword,
                                  obscureText:
                                      BlocProvider.of<LoginCubit>(context)
                                          .isActive,
                                  textFieldValidType:
                                      TextFieldValidatorType.Password,
                                  suffixIcon: InkWell(
                                      onTap: () {
                                        setState(() {
                                          BlocProvider.of<LoginCubit>(context)
                                              .changeActive();
                                        });
                                      },
                                      child:
                                          BlocProvider.of<LoginCubit>(context)
                                                  .isActive
                                              ? const Icon(
                                                  Icons.visibility_off,
                                                  color: Colors.grey,
                                                )
                                              : const Icon(Icons.visibility)),
                                  currentFocusNode: passFocus,
                                  nextFocusNode: passFocus),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Transform.scale(
                                    scale: .6.w,
                                    alignment: Alignment.centerLeft,
                                    child: CupertinoSwitch(
                                      value:
                                          BlocProvider.of<LoginCubit>(context)
                                              .isActivedSwitch,
                                      onChanged: (bool value) {
                                        setState(() {
                                          BlocProvider.of<LoginCubit>(context)
                                              .changeActivedSwitch();
                                        });
                                      },
                                    ),
                                  ),
                                  Text(AppWords.rememberme.tr),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      goToScreen(
                                          screenNames:
                                              ScreenNames.forgetpasswordScreen);
                                    },
                                    child: Text(AppWords.forgotpassword.tr,
                                        style: AppTextStyle.textStyle16medium),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30.h),
                              CustomButton(
                                  height: 65.h,
                                  backgroundColor: AppColors.primaryColor,
                                  title: AppWords.signin.tr,
                                  style: AppTextStyle.textStyle24medium
                                      .copyWith(
                                          color: AppColors.backgroundColor),
                                  titleFontSize: 24.h,
                                  onPress: () {
                                    if (formKey.currentState!.validate()) {
                                      if (argument == Screen.patientScreen) {
                                        goToScreen(
                                            screenNames:
                                                ScreenNames.bottomNavigationBar,
                                            arguments: Screen.patientScreen);
                                      } else {
                                        goToScreen(
                                            screenNames:
                                                ScreenNames.bottomNavigationBar,
                                            arguments: Screen.doctorScreen);
                                      }
                                    }
                                  }),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(AppWords.createaccount.tr,
                                      style: AppTextStyle.textStyle20medium
                                          .copyWith(
                                              color: const Color(0xff4D5F65))),
                                  InkWell(
                                    onTap: () {
                                      goToScreen(
                                          screenNames:
                                              ScreenNames.registerScreen);
                                    },
                                    child: Text(
                                      AppWords.signup.tr,
                                      style: AppTextStyle.textStyle18semiBold,
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                      ));
                }
                if (state is LoginLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              })),
    );
  }
}
