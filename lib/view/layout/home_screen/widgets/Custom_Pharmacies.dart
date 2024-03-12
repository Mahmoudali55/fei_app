import 'package:fei_app/helper/model/custom_home_model.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPharmacies extends StatelessWidget {
  const CustomPharmacies({super.key, required this.customHomeModel});
  final CustomHomeModel customHomeModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: customHomeModel.onTap,
      child: Container(
        height: customHomeModel.height,
        width: customHomeModel.width,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: AppColors.backgroundColor,
            border: customHomeModel.border,
            shape: BoxShape.rectangle),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.backgroundColor,
                // border: Border.all(color: AppColors.backgroundColor, width: .4),
              ),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: AppColors.hintColor, width: 2),
                  ),
                  child: Image.asset(customHomeModel.image,
                      height: 74, width: 77))),
          Text(
            customHomeModel.title,
            style: AppTextStyle.textStyle11medium,
          ),
        ]),
      ),
    );
  }
}
