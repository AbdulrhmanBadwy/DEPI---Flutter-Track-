import 'package:finance/core/routing/app_routes.dart';
import 'package:finance/core/styling/app_assets.dart';
import 'package:finance/core/styling/app_styles.dart';
import 'package:finance/core/widgets/primary_button_widget.dart';
import 'package:finance/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SuccessChangePasswordScreen extends StatelessWidget {
  const SuccessChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAssets.successfulMark,
              width: 100.w,
              height: 100.h,
            ),
            const HeightSpacing(35),
            Text(
              'Password Changed!',
              style: AppStyles.primaryHeadLineStyle.copyWith(fontSize: 26.sp),
            ),
            const HeightSpacing(8),
            SizedBox(
              width: 226.w,
              height: 46.h,
              child: Text(
                textAlign: TextAlign.center,
                'Your password has been changed successfully.',
                style: AppStyles.grey12MediumStyle.copyWith(fontSize: 14.sp),
              ),
            ),
            const HeightSpacing(40),
            PrimaryButtonWidget(
              width: 331.w,
              height: 56.h,
              buttonText: 'Back to Login',
              onPressed: (){
                GoRouter.of(context).pushReplacement(AppRoutes.loginScreen);
              },
            )
          ],
        ),
      ),
    );
  }
}
