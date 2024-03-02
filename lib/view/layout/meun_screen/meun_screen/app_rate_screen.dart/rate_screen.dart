import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RateScreen extends StatelessWidget{
  const RateScreen({super.key});

  @override
  Widget build(BuildContext context) {
 return Scaffold(
  appBar: AppBar(
     backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        title:Text(
             AppWords.applicationRate.tr,
             style: AppTextStyle.textStyle25bold    
       ) ,     
       leading:const BackButtonCustom()
  ),
 );
  }

}