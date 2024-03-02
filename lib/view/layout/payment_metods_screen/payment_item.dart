import 'package:fei_app/helper/model/custom_model_payment.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PymentMethodsItem extends StatelessWidget {
  const PymentMethodsItem({
    super.key,
    required this.isAccepted,
    this.onTap,
    required this.paymentModel,
  });

  final bool isAccepted;
  final PaymentModel paymentModel;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
                height: 90.h,
                width: 390.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.hintColor),
                child: ListTile(
                  leading: Image.asset(paymentModel.image),
                  title: Text(
                    paymentModel.title,
                    style: AppTextStyle.textStyle22bold,
                  ),
                  subtitle: Text(
                    paymentModel.subtitle,
                    style: AppTextStyle.textStyle20bold
                        .copyWith(color: AppColors.thirdColor),
                  ),
                  trailing: isAccepted
                      ? Container(
                          height: 30.h,
                          width: 25.h,
                          decoration: ShapeDecoration(
                            color:
                                isAccepted ? Colors.white : AppColors.hintColor,
                            shape: CircleBorder(
                              side: isAccepted
                                  ? const BorderSide(
                                      color: Colors.green, width: 2)
                                  : const BorderSide(
                                      color: AppColors.hintColor,
                                    ),
                            ),
                          ),
                          child: isAccepted
                              ? const Icon(Icons.circle,
                                  color: Colors.green, size: 15)
                              : const SizedBox(),
                        )
                      : const SizedBox(),
                )),
          ),
          SizedBox(
            width: 25.w,
          ),
          isAccepted
              ? const SizedBox()
              : CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 12,
                  child: InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return CupertinoAlertDialog(
                                title: Text(
                                  'Are you sure want to remove the card ?',
                                  style: AppTextStyle.textStyle18medium,
                                ),
                                actions: [
                                  CupertinoDialogAction(
                                      onPressed: () {
                                        goBack();
                                      },
                                      child: Text('Cancel',
                                          style: AppTextStyle.textStyle17regular
                                              .copyWith(color: Colors.blue))),
                                  CupertinoDialogAction(
                                    child: Text(
                                      'Remove',
                                      style: AppTextStyle.textStyle17semiBold
                                          .copyWith(color: Colors.red),
                                    ),
                                  ),
                                ],
                              );
                            });
                      },
                      child: const Icon(Icons.remove,
                          color: AppColors.backgroundColor)))
        ],
      ),
    );
  }
}
