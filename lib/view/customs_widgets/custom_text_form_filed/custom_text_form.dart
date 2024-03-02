import 'package:fei_app/helper/utils/app_colors.dart';
import 'package:fei_app/helper/utils/app_textstyle.dart';
import 'package:fei_app/helper/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatefulWidget {
  final TextInputType inputType;

  final String labelText;
  final String hintText;
  final TextFieldValidatorType textFieldValidType;
  final TextEditingController? controller;
  final String? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? confirmPasswordController;
  final String? firstPasswordToConfirm;
  final bool? obscureText;
  final int? maxLength;
  final bool enabled;
  final bool readOnly;
  final FocusNode currentFocusNode, nextFocusNode;
  final Function onTap;
  final double fieldWidth;
  final double? height;

  final int maxLines;

  final Color cursorColor;
  final Color? fillColor;
  final TextStyle? hintStyle;
  final double? boarderRadius;
  final Color disabledBorderColor;
  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final void Function()? suffixPressed;
  const CustomTextField({
    super.key,
    this.inputType = TextInputType.text,
    this.labelText = '',
    this.hintText = '',
    this.textFieldValidType = TextFieldValidatorType.Required,
    this.controller,
    this.prefixIcon,
    this.confirmPasswordController,
    this.firstPasswordToConfirm,
    this.maxLength,
    this.enabled = true,
    required this.onTap,
    this.obscureText,
    required this.currentFocusNode,
    required this.nextFocusNode,
    this.maxLines = 1,
    this.cursorColor = Colors.green,
    this.hintStyle,
    this.fillColor,
    this.boarderRadius,
    this.disabledBorderColor = const Color(0xffF4F4F4),
    this.enabledBorderColor = const Color(0xfff5f6fa),
    this.focusedBorderColor = Colors.green,
    this.suffixIcon,
    this.suffixPressed,
    this.readOnly = false,
    this.fieldWidth = 398,
    this.height,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final bool obscureText = true;
//  bool secure = false;
  @override
  // void initState() {
  //   // TODO: implement initState
  //   secure = widget.obscureText ?? secure;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: widget.height,
        width: widget.fieldWidth.w,
        child: TextFormField(
            keyboardType: widget.inputType,
            maxLines: widget.maxLines,
            controller: widget.controller,
            enabled: widget.enabled,
            onTap: () {
              widget.onTap();
            },
            readOnly: widget.readOnly,
            textInputAction: widget.currentFocusNode == widget.nextFocusNode
                ? TextInputAction.done
                : TextInputAction.next,
            onFieldSubmitted: (text) {
              if (widget.currentFocusNode == widget.nextFocusNode) {
                widget.currentFocusNode.unfocus();
              } else {
                widget.currentFocusNode.unfocus();
                FocusScope.of(context).requestFocus(widget.nextFocusNode);
              }
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            cursorColor: AppColors.primaryColor,
            obscureText: widget.obscureText ?? obscureText,
            style: AppTextStyle.textStyle15regular,
            focusNode: widget.currentFocusNode,
            keyboardAppearance: Brightness.dark,
            validator: (v) => validation(
                type: widget.textFieldValidType,
                value: v!,
                firstPasswordForConfirm: widget.textFieldValidType ==
                        TextFieldValidatorType.ConfirmPassword
                    ? widget.confirmPasswordController!.value.text
                    : ""),
            decoration: InputDecoration(
                filled: true,
                // contentPadding: EdgeInsets.only(left: 15.w, right: 20.w, top: 20.h),
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(widget.boarderRadius ?? 16.w),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      widget.boarderRadius ?? 10.w,
                    ),
                    borderSide: BorderSide(
                        color: widget.enabledBorderColor, width: 2.w)),
                focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(widget.boarderRadius ?? 10.w),
                    borderSide: BorderSide(
                        color: widget.focusedBorderColor, width: 2.w)),
                errorBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(widget.boarderRadius ?? 10.w),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.red,
                    )),
                fillColor: widget.fillColor ?? const Color(0xfff5f6fa),
                hintStyle: widget.hintStyle,
                hintText: widget.hintText,
                prefixIcon: widget.prefixIcon != null
                    ? Padding(
                        padding: EdgeInsets.all(12.h),
                        child: SvgPicture.asset(
                          widget.prefixIcon!,
                          width: 24.w,
                          height: 24.h,
                        ))
                    : null,
                suffixIcon: widget.suffixIcon)));
  }
}

// class CustomTextFormField extends StatelessWidget {
//   const CustomTextFormField({
//     Key? key,
//     this.controller,
//     this.isPassword = false,
//     this.type,
//     this.isClickable = true,
//     this.onSubmit,
//     this.onChange,
//     this.onTap,
//     this.validate,
//     this.hintText,
//     this.suffix,
//     this.suffixPressed,
//     this.maxLines = 1,
//     this.disabledBorderColor = const Color(0xffF4F4F4),
//     this.enabledBorderColor = const Color(0xfff5f6fa),
//     this.focusedBorderColor = AppColors.mainColor,
//     this.fillColor = const Color(0xffF7F6c0),
//     this.boarderRadius,
//     this.prefix,
//     this.prefixColor,
//     this.labelText,
//     this.cursorColor,
//     this.prefixIcon,
//     this.suffixIcon,
//     this.suffixColor,
//   }) : super(key: key);
//
//   final TextEditingController? controller;
//   final TextInputType? type;
//   final void Function(String)? onSubmit;
//   final void Function(String)? onChange;
//   final void Function()? onTap;
//   final bool isPassword;
//   final String? Function(String?)? validate;
//   final String? hintText;
//   final String? labelText;
//   final String? suffix;
//   final String? prefix;
//   final void Function()? suffixPressed;
//   final bool isClickable;
//   final int maxLines;
//   final IconData? prefixIcon;
//   final IconData? suffixIcon;
//   final double? boarderRadius;
//   final Color disabledBorderColor;
//   final Color enabledBorderColor;
//   final Color focusedBorderColor;
//   final Color fillColor;
//   final Color? prefixColor;
//   final Color? suffixColor;
//   final Color? cursorColor;
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 56.h,
//       width: 380.w,
//       child: TextFormField(
//         style: AppTextStyle.textStyle15,
//         maxLines: maxLines,
//         controller: controller,
//         keyboardType: type,
//         obscureText: isPassword,
//         enabled: isClickable,
//         onFieldSubmitted: onSubmit,
//         onChanged: onChange,
//         onTap: onTap,
//         validator: validate,
//         cursorColor: cursorColor ?? AppColors.mainColor,
//         decoration: InputDecoration(
//           filled: true,
//           fillColor: fillColor,
//           prefixIcon: Icon(prefixIcon),
//           suffixIcon: Icon(suffixIcon),
//           prefixIconColor: prefixColor,
//           suffixIconColor: suffixColor,
//           prefix: prefix != null ? SvgPicture.asset(prefix!) : null,
//           disabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(boarderRadius ?? 16.w),
//               borderSide: BorderSide(
//                 color: disabledBorderColor,
//               )),
//           enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(
//                 boarderRadius ?? 16.w,
//               ),
//               borderSide: BorderSide(color: enabledBorderColor)),
//           focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(boarderRadius ?? 16.w),
//               borderSide: BorderSide(color: focusedBorderColor)),
//           hintText: hintText,
//           labelText: labelText,
//           labelStyle: AppTextStyle.textStyle16.copyWith(
//               color: AppColors.mainColor, fontWeight: FontWeight.w400),
//           hintStyle: AppTextStyle.textStyle12.copyWith(
//               color: AppColors.secondaryColor, fontWeight: FontWeight.w400),
//           suffix: suffix != null
//               ? InkWell(
//                   onTap: suffixPressed,
//                   child: SvgPicture.asset(
//                     suffix!,
//                     colorFilter:
//                         const ColorFilter.mode(Colors.black, BlendMode.srcIn),
//                   ))
//               : null,
//           border: const OutlineInputBorder(),
//         ),
//       ),
//     );
//   }
// }
