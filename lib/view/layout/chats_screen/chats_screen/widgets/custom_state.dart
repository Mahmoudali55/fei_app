import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomState extends StatelessWidget {
  const CustomState({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return index == 0
              ? Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryColor,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: AppColors.backgroundColor,
                    size: 30,
                  ),
                )
              : Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue[100],
                  ),
                  child: Stack(
                    textDirection: TextDirection.rtl,
                    children: [
                      Center(
                        child: SizedBox(
                          height: 65,
                          width: 65,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              AppImages.doctors,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(2),
                        padding: const EdgeInsets.all(3),
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
