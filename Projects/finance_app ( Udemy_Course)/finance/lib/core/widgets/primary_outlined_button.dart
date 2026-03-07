import 'package:finance/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryOutlinedButton extends StatelessWidget {
  final String? buttonText;
  final Color? borderColor;
  final double? width;
  final double? height;
  final double? bordersRadius;
  final Color? textColor;
  final void Function()? onPressed;
  final double? fontSize;
  const PrimaryOutlinedButton({
    super.key,
    this.buttonText,
    this.borderColor,
    this.width,
    this.height,
    this.bordersRadius,
    this.textColor,
    this.onPressed,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: borderColor??AppColors.primaryColor,
          width: 1.w
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(bordersRadius ?? 8.r),
        ),
        fixedSize: Size(width ?? 331.w, height ?? 65.h),
      ),
      child: Text(
        buttonText ?? '',
        style: TextStyle(
          color: textColor ?? AppColors.primaryColor,
          fontSize: fontSize ?? 16.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
