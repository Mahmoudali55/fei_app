import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/customs_widgets/custom_text_form_filed/custom_text_form.dart';
import 'package:flutter/material.dart';

class AddCardPayment extends StatefulWidget {
  const AddCardPayment({super.key});

  @override
  State<AddCardPayment> createState() => _AddCardPaymentState();
}

class _AddCardPaymentState extends State<AddCardPayment> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Card', style: AppTextStyle.textStyle22bold),
          centerTitle: true,
          leading: const BackButtonCustom(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              ' Card Holder Name',
              style: AppTextStyle.textStyle18medium,
            ),
            CustomTextField(
                onTap: () {},
                fillColor: AppColors.hintColor,
                currentFocusNode: FocusNode(),
                nextFocusNode: FocusNode(),
                hintText: 'name',
                inputType: TextInputType.number),
            Text(
              'Card Number',
              style: AppTextStyle.textStyle18medium,
            ),
            CustomTextField(
                onTap: () {},
                fillColor: AppColors.hintColor,
                currentFocusNode: FocusNode(),
                nextFocusNode: FocusNode(),
                hintText: 'XXXX XXXX XXXX XXXX',
                inputType: TextInputType.number),
            Row(
              children: [
                Text(
                  'Expiry Date',
                  style: AppTextStyle.textStyle18medium,
                ),
                const SizedBox(
                  width: 100,
                ),
                Text(
                  'Security code',
                  style: AppTextStyle.textStyle18medium,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                      onTap: () {},
                      fillColor: AppColors.hintColor,
                      currentFocusNode: FocusNode(),
                      nextFocusNode: FocusNode(),
                      hintText: '20/3',
                      inputType: TextInputType.number),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CustomTextField(
                      onTap: () {},
                      fillColor: AppColors.hintColor,
                      currentFocusNode: FocusNode(),
                      nextFocusNode: FocusNode(),
                      hintText: 'cvv',
                      inputType: TextInputType.number),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'ZIP/Postal Code',
              style: AppTextStyle.textStyle18medium,
            ),
            CustomTextField(
                onTap: () {},
                fillColor: AppColors.hintColor,
                currentFocusNode: FocusNode(),
                nextFocusNode: FocusNode(),
                hintText: 'xxxx',
                inputType: TextInputType.number),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                  value: isSelected,
                  onChanged: (value) {
                    setState(() {
                      isSelected = value!;
                    });
                  },
                  activeColor: AppColors.primaryColor,
                ),
                Text(
                  'Save this card for next purchases',
                  style: AppTextStyle.textStyle18medium,
                ),
              ],
            ),
            const SizedBox(
              height: 180,
            ),
            CustomButton(
              title: 'Add',
              style: AppTextStyle.textStyle24medium
                  .copyWith(color: AppColors.backgroundColor),
              onPress: () {
                goBack();
              },
            )
          ]),
        ));
  }
}
