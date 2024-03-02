import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeFAQ extends StatefulWidget {
  const CustomeFAQ({super.key});

  @override
  State<CustomeFAQ> createState() => _CustomeFAQState();
}

class _CustomeFAQState extends State<CustomeFAQ> {
  double _containerHeight = 51.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: _containerHeight,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.textColor,
              ),
              borderRadius: BorderRadius.circular(10),
              color: AppColors.backgroundColor,
            ),
            child: InkWell(
              onTap: () {
                setState(() {
                  _containerHeight = _containerHeight == 51.0 ? 200.0 : 51.0;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Definition of Pulmonary Embolism:',
                    style: AppTextStyle.textStyle18medium,
                  ),

                  Icon(
                    _containerHeight == 51.0
                        ? Icons.chevron_right_outlined
                        : Icons.chevron_left_outlined,
                  ), // الأيقونة
                  const SizedBox(width: 10), // النص
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
