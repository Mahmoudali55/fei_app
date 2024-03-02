import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/view/customs_widgets/custom_button/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogeScreen extends StatefulWidget {
  const LogeScreen({
    super.key,
    required this.image,
    required this.title,
    required this.style,
  });
  final String image;
  final String title;
  final TextStyle style;

  @override
  State<LogeScreen> createState() => _LogeScreenState();
}

class _LogeScreenState extends State<LogeScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20.h),
          const Align(alignment: Alignment.topLeft, child: BackButtonCustom()),
          const SizedBox(
            height: 20,
          ),
          AnimatedBuilder(
            animation: _scaleAnimation,
            builder: (context, child) {
              return Transform.scale(
                  scale: _scaleAnimation.value,
                  child: Container(
                      // margin: const EdgeInsets.only(top: 100),
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Column(
                        children: [
                          Image.asset(
                            widget.image,
                            height: 300.h,
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              child: Text(widget.title, style: widget.style)),
                        ],
                      )));
            },
          ),
        ],
      ),
    );
  }
}
