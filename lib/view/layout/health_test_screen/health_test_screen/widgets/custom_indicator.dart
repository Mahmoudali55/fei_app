import 'package:dots_indicator/dots_indicator.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:flutter/material.dart';


class CustomDotIndicator extends StatelessWidget{
  
  const CustomDotIndicator({Key? key, @required this.dotIndex}) : super(key: key);

  final double? dotIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
          decorator: DotsDecorator(
          color:const Color.fromARGB(255, 208, 207, 207), 
           activeColor:AppColors.primaryColor ,
           activeSize: const Size(73.0, 7.0),
           size:const Size(73.0, 7.0) ,
           activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
           shape: RoundedRectangleBorder(side: 
           const BorderSide(color:
           Color.fromARGB(255, 208, 207, 207)),
           borderRadius: BorderRadius.circular(8))
            ),
            dotsCount:4,
           position: dotIndex!.toInt(),);
  }

}