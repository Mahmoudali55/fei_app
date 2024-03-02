import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({
    super.key,
  });

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: AppColors.textColor,
          indent: 10,
          endIndent: 10,
          thickness: .5,
          height: 1,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(children: [
          Image.asset(AppImages.adol, width: 100, height: 100),
          const SizedBox(
            width: 10,
          ),
          Column(children: [
            Text(
              'adol 500mg \n 24 tablets',
              style: AppTextStyle.textStyle14light,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '250 EGP',
              style: AppTextStyle.textStyle14light,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              height: 33.h,
              width: 86.w,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.textColor, width: 1),
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (index > 0) index--;
                    });
                  },
                  child: Text(
                    '-',
                    style: AppTextStyle.textStyle14semiBold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  index.toString(),
                  style: AppTextStyle.textStyle14semiBold,
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      index++;
                    });
                  },
                  child: Text(
                    '+',
                    style: AppTextStyle.textStyle14semiBold,
                  ),
                ),
              ]),
            ),
            const SizedBox(
              width: 20,
            )
          ]),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.close, color: AppColors.textColor),
              ),
              Text(
                'Remove',
                style: AppTextStyle.textStyle14light,
              )
            ],
          )
        ])
      ],
    );
  }
}
