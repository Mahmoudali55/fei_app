import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final String image;
  final Function()? onTap;
  const MenuItem({
    super.key,
    required this.title,
    required this.image,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        title: InkWell(
          onTap: onTap,
          child: Text(
            title,
            style: AppTextStyle.textStyle20regular,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_outlined,
          size: 16,
        ),
        leading: Transform.scale(scale: 0.9, child: Image.asset(image)),
        onTap: () {},
      ),
    );
  }
}

class smallMenuItem extends StatelessWidget {
  final String title;
  final double width;
  final Function()? onTap;
  const smallMenuItem({
    super.key,
    required this.title,
    required this.width,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[200],
      ),
      child: ListTile(
          title: InkWell(
            onTap: onTap,
            child: Text(
              title,
              style: AppTextStyle.textStyle20regular,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 16,
          ),
          onTap: onTap),
    );
  }
}

class ExpandedMenuItem extends StatelessWidget {
  final String title;
  final String image;
  final Widget children;
  const ExpandedMenuItem(
      {super.key,
      required this.title,
      required this.children,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        title,
        style: AppTextStyle.textStyle18regular,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_outlined,
        size: 16,
      ),
      leading: Transform.scale(scale: .9, child: Image.asset(image)),
      iconColor: Colors.grey[800],
      childrenPadding: const EdgeInsets.all(5),
      children: [
        children,
      ],
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
        title: Text(
          widget.title,
          style: AppTextStyle.textStyle20regular,
        ),
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
