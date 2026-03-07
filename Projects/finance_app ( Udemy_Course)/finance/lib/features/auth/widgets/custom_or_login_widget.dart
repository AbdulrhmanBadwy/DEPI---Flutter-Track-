import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styling/app_styles.dart';
import '../../../core/widgets/spacing_widget.dart';

class CustomOrLoginWidget extends StatelessWidget {
  final String text;
  const CustomOrLoginWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        SizedBox(width: 100.w, child: const Divider()),
        const WidthSpacing(12),
        Text(
          text,
          style: AppStyles.black15BoldStyle.copyWith(
            color: const Color(0xff6A707C),
          ),
        ),
        const WidthSpacing(12),
        SizedBox(width: 90.w, child: const Divider()),
      ],
    );
  }
}
