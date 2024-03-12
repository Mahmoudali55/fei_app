import 'package:fei_app/helper/model/custom_home_model.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomServicesDoctor extends StatelessWidget {
  const CustomServicesDoctor({
    super.key,
    required this.customServicesModel,
  });
  final CustomServicesModel customServicesModel;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            InkWell(
                onTap: customServicesModel.onTap,
                child: Image.asset(customServicesModel.image, height: 50.h)),
            Text(customServicesModel.title,
                style: AppTextStyle.textStyle14light),
          ],
        ));
  }
}
