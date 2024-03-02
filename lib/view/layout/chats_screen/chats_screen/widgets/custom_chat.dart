import 'package:fei_app/helper/model/custom_chat_model.dart';
import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class CustomChat extends StatelessWidget {
  final CustomChatModel customChatModel;

  const CustomChat({super.key, required this.customChatModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 3),
          horizontalTitleGap: 10,
          minVerticalPadding: 15,
          onTap: () {
            goToScreen(screenNames: ScreenNames.messageScreen);
          },
          leading: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue[100],
            ),
            height: 65,
            width: 65,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                customChatModel.image,
                fit: BoxFit.contain,
              ),
            ),
          ),
          title: Text(
            customChatModel.title,
            style: AppTextStyle.textStyle20medium,
          ),
          subtitle: Text(
            customChatModel.subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.textStyle16regular.copyWith(color: Colors.grey),
          ),
          trailing: Text(
            customChatModel.time,
            style: AppTextStyle.textStyle16regular,
          ),
        ),
      ],
    );
  }
}
