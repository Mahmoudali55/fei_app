
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class CustomDescription extends StatelessWidget {
  const CustomDescription({
    super.key,
    required this.text,
    required this.suptext,
    required this.image,
  });
  final String text;
  final String suptext;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      width: 113,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          border: Border.all(color: AppColors.primaryColor)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text,style: AppTextStyle.textStyle14semiBold.copyWith(color: const Color(0xff707070)),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image),
              Text(suptext,style: AppTextStyle.textStyle18regular,),
            ],
          )
        ],
      ),
    );
  }
}
