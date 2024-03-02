import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/layout/preventation_screen/widgets/custome_preventation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PreventationScreen extends StatelessWidget {
  const PreventationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppWords.preventation.tr,
        ),
        centerTitle: true,
        leading: const BackButtonCustom(),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              indent: 10,
              endIndent: 10,
              thickness: 3,
              color: AppColors.hintColor,
            ),
            CustomePreventationScreen()
          ],
        ),
      ),
    );
  }
}
