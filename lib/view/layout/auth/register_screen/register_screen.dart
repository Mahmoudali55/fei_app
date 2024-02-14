import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/helper/utils/validator.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isAccepted = false;
  List<String> goverments = [
    "mansora",
    "port said",
    "safaga",
    "damietta",
    "hurghada",
    "cairo"
  ];
  var firstname = FocusNode();
  var lastname = FocusNode();
  var username = FocusNode();
  var email = FocusNode();
  var password = FocusNode();

  var confirmpassword = FocusNode();
  var brithDate = FocusNode();
  var goverment = FocusNode();

  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var confirmpasswordController = TextEditingController();
  var firstnameController = TextEditingController();
  var lastnameController = TextEditingController();

  var passwordController = TextEditingController();
  var govermentController = TextEditingController();
  var brithDateController = TextEditingController();
  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
    brithDateController.text = DateFormat('yyyy-MM-dd').format(selectedDate);
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
        brithDateController.text =
            DateFormat('yyyy-MM-dd').format(selectedDate);
      });
    }
  }

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20)
              .copyWith(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackButtonCustom(),
              const SizedBox(
                height: 15,
              ),
              Text(
                AppWords.fristname.tr,
                style: AppTextStyle.textStyle20medium,
              ),
              CustomTextField(
                  onTap: () {},
                  controller: firstnameController,
                  hintText: 'Enter your fristname',
                  inputType: TextInputType.emailAddress,
                  textFieldValidType: TextFieldValidatorType.Name,
                  currentFocusNode: firstname,
                  nextFocusNode: lastname),
              Text(
                AppWords.lastname.tr,
                style: AppTextStyle.textStyle20medium,
              ),
              CustomTextField(
                  onTap: () {},
                  controller: lastnameController,
                  hintText: 'Enter your lastname',
                  inputType: TextInputType.emailAddress,
                  textFieldValidType: TextFieldValidatorType.Name,
                  currentFocusNode: lastname,
                  nextFocusNode: username),
              Text(
                AppWords.username.tr,
                style: AppTextStyle.textStyle20medium,
              ),
              CustomTextField(
                  onTap: () {},
                  controller: usernameController,
                  hintText: 'Enter your username',
                  inputType: TextInputType.emailAddress,
                  textFieldValidType: TextFieldValidatorType.Name,
                  currentFocusNode: username,
                  nextFocusNode: email),
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
                  nextFocusNode: password),
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
                  currentFocusNode: password,
                  nextFocusNode: confirmpassword),
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
                  currentFocusNode: confirmpassword,
                  nextFocusNode: brithDate),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  AppWords.birthdate.tr,
                  style: AppTextStyle.textStyle20medium,
                ),
                SizedBox(width: .3.sw),
                Text(
                  AppWords.goverment.tr,
                  style: AppTextStyle.textStyle20medium,
                ),
              ]),
              Row(children: [
                Expanded(
                  child: CustomTextField(
                      controller: brithDateController,
                      readOnly: true,
                      onTap: () => _selectDate(context),
                      suffixIcon: const Icon(Icons.calendar_today),
                      hintText: 'DD/MM/YYYY',
                      inputType: TextInputType.datetime,
                      textFieldValidType: TextFieldValidatorType.Optional,
                      currentFocusNode: brithDate,
                      nextFocusNode: brithDate),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: StatefulBuilder(
                    builder: (context, setState) => CustomTextField(
                      readOnly: true,
                      controller: govermentController,
                      onTap: () {},
                      inputType: TextInputType.streetAddress,
                      textFieldValidType: TextFieldValidatorType.Name,
                      suffixIcon: DropdownButton<String>(
                        dropdownColor: Colors.white,
                        underline: const SizedBox.shrink(),
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.textColor,
                        ),
                        items: goverments
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Container(
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50.r)),
                                    child: Text(
                                      e,
                                      style: AppTextStyle.textStyle12regular,
                                    )),
                              ),
                            )
                            .toList(),
                        // value: selectedItem,
                        onChanged: (value) {
                          setState(() {
                            govermentController.text = value!;
                            print(govermentController.text);
                          });
                        },
                      ),
                      currentFocusNode: goverment,
                      nextFocusNode: brithDate,
                    ),
                  ),
                ),
              ]),
              const SizedBox(height: 30),
              CustomButton(
                backgroundColor: AppColors.primaryColor,
                title: AppWords.signup.tr,
                titleFontSize: 24,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppWords.account.tr,
                      style: AppTextStyle.textStyle20medium
                          .copyWith(color: const Color(0xff4D5F65))),
                  InkWell(
                    onTap: () {
                      goToScreen(screenNames: ScreenNames.loginScreen);
                    },
                    child: Text(
                      AppWords.signin.tr,
                      style: AppTextStyle.textStyle18semiBold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}