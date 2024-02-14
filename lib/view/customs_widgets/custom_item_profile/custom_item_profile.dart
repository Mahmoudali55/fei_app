import 'package:fei_app/helper/model/custom_item_model_profile.dart';
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:fei_app/view/customs_widgets/custom_button/custom_button.dart';
import 'package:fei_app/view/customs_widgets/custom_item_profile/custom_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomItemProfile extends StatelessWidget {
  const CustomItemProfile({super.key, required this.itemProfileModel});
  final CustomItemProfileModel itemProfileModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        leading: const BackButtonCustom(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 4,
            ),
            Center(child: Image.asset(itemProfileModel.image)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              width: 1.sw,
              height: MediaQuery.of(context).size.height / 1.5,
              decoration: const BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(25))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(itemProfileModel.name),
                      const Spacer(),
                      Image.asset('assets/image/phone.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset('assets/image/message.png'),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 20,
                      ),
                      Text(itemProfileModel.location)
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      CustomDescription(
                        text: '',
                        suptext: '',
                        icon: Icons.person,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      CustomDescription(
                        text: '',
                        suptext: '',
                        icon: Icons.person,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      CustomDescription(
                        text: '',
                        suptext: '',
                        icon: Icons.person,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('ddd'),
                  const Text(''),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text('ddd'),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomButton(
                    title: 'dddddddddd',
                    titleFontColor: AppColors.backgroundColor,
                    titleFontSize: 4,
                  ),
                  const Divider(
                    indent: 100,
                    endIndent: 100,
                    thickness: 4,
                    color: AppColors.textColor,
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
