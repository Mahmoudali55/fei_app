import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class ItemPaymentHistory extends StatelessWidget {
  const ItemPaymentHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(10),
        color: AppColors.primaryColor.withOpacity(.15),
        child: Column(children: [
          Row(
            children: [
              Text('name', style: AppTextStyle.textStyle16light),
              Spacer(),
              Text('Heparin', style: AppTextStyle.textStyle18medium),
            ],
          ),
          Row(
            children: [
              Text('Quantity', style: AppTextStyle.textStyle16light),
              Spacer(),
              Text('5', style: AppTextStyle.textStyle18medium),
            ],
          ),
          Row(
            children: [
              Text('Price', style: AppTextStyle.textStyle16light),
              Spacer(),
              Text('${300}EGP', style: AppTextStyle.textStyle18medium),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      height: 5,
                      width: 10,
                      color: AppColors.primaryColor,
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(children: [
            Text('SubTotal', style: AppTextStyle.textStyle16light),
            Spacer(),
            Text('${1500}EGP', style: AppTextStyle.textStyle18medium),
          ])
        ]),
      )
    ]);
  }
}
