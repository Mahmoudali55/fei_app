import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_images.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuItem extends StatefulWidget {
  final String title;
  final String? image;
  final Color? color;
  final Color? imagecolor;
  final TextStyle textStyle;
  final Function()? onTap;
  const MenuItem({
    super.key,
    required this.title,
    this.image,
    this.color,
    required this.textStyle,
    this.onTap,
    this.imagecolor,
  });

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: widget.color,
      ),
      child: ListTile(
        title: InkWell(
          onTap: widget.onTap,
          child: Text(
            widget.title,
            style: widget.textStyle,
          ),
        ),
        trailing: Transform.scale(
          scale: .9,
          child: Image.asset(
              (click == false) ? AppImages.arrowForward : AppImages.arrowDown),
        ),
        leading: widget.image != null
            ? Transform.scale(
                scale: .9,
                child: Image.asset(
                  widget.image!,
                  color: widget.imagecolor,
                ),
              )
            : null,
        onTap: () {
          setState(() {
            click = !click;
          });
        },
      ),
    );
  }
}

class ExpandedMenuItem extends StatefulWidget {
  final String title;
  final String? image;
  final Widget children;
  final Color color;
  const ExpandedMenuItem(
      {super.key,
      required this.title,
      required this.children,
      this.image,
      required this.color});

  @override
  State<ExpandedMenuItem> createState() => _ExpandedMenuItemState();
}

class _ExpandedMenuItemState extends State<ExpandedMenuItem> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ExpansionTile(
        collapsedShape:
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(20)),
        // collapsedBackgroundColor: widget.color,
        onExpansionChanged: (clik) {
          setState(() {
            click = !click;
          });
        },
        title: Text(
          widget.title,
          style: AppTextStyle.textStyle18regular,
        ),
        trailing: Transform.scale(
          scale: .9,
          child: Image.asset(
            (click == false) ? AppImages.arrowForward : AppImages.arrowDown,
          ),
        ),
        leading: widget.image != null
            ? Transform.scale(
                scale: .9,
                child: Image.asset(
                  widget.image!,
                  color: AppColors.textColor,
                ),
              )
            : null,
        iconColor: Colors.grey[800],
        childrenPadding: const EdgeInsets.all(5),
        children: [
          widget.children,
        ],
      ),
    );
  }
}

class NotificationMenuItem extends StatefulWidget {
  final String title;
  final String image;
  const NotificationMenuItem(
      {super.key, required this.title, required this.image});
  @override
  State<NotificationMenuItem> createState() => _NotificationMenuItemState();
}

class _NotificationMenuItemState extends State<NotificationMenuItem> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(widget.title, style: AppTextStyle.textStyle18regular),
        leading: Transform.scale(scale: .9, child: Image.asset(widget.image)),
        trailing: Transform.scale(
          scale: 0.6,
          child: CupertinoSwitch(
            value: isActive,
            onChanged: (bool value) {
              setState(() {
                isActive = value;
              });
            },
          ),
        ));
  }
}
