
import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:const EdgeInsets.only(right: 80),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue[100],
                    ),
                    height: 50,
                    width: 50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        AppImages.doctors,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                 const SizedBox(width: 10,),
              ClipPath(
                child: Container(
                  padding:const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color:AppColors.primaryColor,
                  ),
                  child:Text(
                    "Welcome,we will\n respond to you soon",
                    maxLines: 3,
                     style:AppTextStyle.textStyle20regular.
                     copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 80,bottom: 20),
            child: ClipPath(
              child: Container(
                padding:
                const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[200],
                ),
                child: Text(
                  "Hello!   ",
                  style:AppTextStyle.textStyle20regular,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
