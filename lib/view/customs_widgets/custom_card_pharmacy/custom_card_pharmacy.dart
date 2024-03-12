import 'package:fei_app/helper/model/custom_pharmacy_model.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomCardpharmacy extends StatefulWidget {
  const CustomCardpharmacy(
      {super.key, required this.pharmacyModel, required this.Active});
  final PharmacyModel pharmacyModel;
  final bool Active;

  @override
  State<CustomCardpharmacy> createState() => _CustomCardpharmacyState();
}

class _CustomCardpharmacyState extends State<CustomCardpharmacy> {
  bool isFavorite = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.w,
      ),
      width: 180.w,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(22)),
          color:
              widget.Active ? AppColors.hintColor : AppColors.backgroundColor,
          border: Border.all(color: AppColors.textColor, width: .3),
          shape: BoxShape.rectangle),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          clipBehavior: Clip.none,
          margin: const EdgeInsets.symmetric(vertical: 20),
          width: 125.w,
          height: 95.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:
                widget.Active ? AppColors.backgroundColor : AppColors.hintColor,
            border: Border.all(color: AppColors.hintColor, width: 2),
          ),
          child: widget.Active
              ? Image.asset(widget.pharmacyModel.image, height: 74, width: 77)
              : Row(
                  children: [
                    Image.asset(widget.pharmacyModel.image,
                        height: 74, width: 60),
                    SizedBox(width: 10.w),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                        child: Align(
                            alignment: Alignment.topRight,
                            child: isFavorite
                                ? const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : const Icon(
                                    Icons.favorite_outline_outlined,
                                    color: Colors.red,
                                  ))),
                  ],
                ),
        ),
        Text(
          widget.pharmacyModel.title,
          style: AppTextStyle.textStyle13light,
        ),
        Text(
          widget.pharmacyModel.subtitle,
          style: AppTextStyle.textStyle13light,
        ),
        Text(
          '${widget.pharmacyModel.price} EGP',
          style: AppTextStyle.textStyle13Semibold,
        ),
        CustomButton(
          height: 28.h,
          borderRadius: 8.r,
          style: AppTextStyle.textStyle11medium
              .copyWith(color: AppColors.backgroundColor),
          backgroundColor: AppColors.primaryColor,
          title: AppWords.addToCart.tr,
          titleFontSize: 5,
        ),
        const SizedBox(
          height: 10,
        )
      ]),
    );
  }
}
