import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogeScreen extends StatelessWidget {
  const LogeScreen({
    super.key,
    required this.image,
    required this.title,
    required this.style,
  });
  final String image;
  final String title;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: const EdgeInsets.only(top: 100),
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            const Align(
                alignment: Alignment.topLeft, child: BackButtonCustom()),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              image,
              height: 300.h,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(title, style: style)),
          ],
        ));
  }
}
