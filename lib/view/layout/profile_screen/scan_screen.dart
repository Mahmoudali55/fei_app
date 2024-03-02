import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/app_word.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  var qrstr = 'let\'s Scan It';
  var height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        child: Column(children: [
          Row(children: [
            const BackButtonCustom(),
            SizedBox(
              width: 100.w,
            ),
            Text(
              AppWords.oRCode.tr,
              style: AppTextStyle.textStyle32medium,
              textAlign: TextAlign.center,
            ),
          ]),
          SizedBox(
            height: 120.h,
          ),
          Image.asset(AppImages.scancode),
          SizedBox(
            height: 60.h,
          ),
          Text(
            AppWords.textScan.tr,
            style:
                AppTextStyle.textStyle24semiBold.copyWith(color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 70.h,
          ),
          Row(
            children: [
              CustomButton(
                width: 189.w,
                title: AppWords.textbuttonscan.tr,
                style: AppTextStyle.textStyle26medium
                    .copyWith(color: AppColors.backgroundColor),
                onPress: () async {
                  String barcodeScanRes =
                      await FlutterBarcodeScanner.scanBarcode(
                    '#2A99CF', // لون الشريط العائم
                    'Cancel',

                    // النص الذي يظهر لإلغاء عملية المسح
                    true, // تحديد ما إذا كان يتم إظهار زر الفلاش أم لا
                    ScanMode.BARCODE,
                  );
                },
              ),
              SizedBox(
                width: 40.w,
              ),
              CustomButton(
                  width: 189.w,
                  backgroundColor: AppColors.backgroundColor,
                  borderColor: AppColors.primaryColor,
                  title: 'Import',
                  style: AppTextStyle.textStyle22medium)
            ],
          )
        ]),
      ),
    );
  }
}
