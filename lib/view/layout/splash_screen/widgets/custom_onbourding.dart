import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomOnbourding extends StatelessWidget {
  const CustomOnbourding({
    super.key,
    required this.isActive,
  });
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? Container(
            margin: const EdgeInsets.all(4),
            width: 48,
            height: 12,
            decoration: ShapeDecoration(
              color: const Color(0xFF4DB297),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          )
        : Container(
            margin: const EdgeInsets.all(4),
            width: 12,
            height: 12,
            decoration: ShapeDecoration(
              color: Colors.grey[400],
              shape: const CircleBorder(),
            ),
          );
  }
}
