import 'package:finance/core/routing/app_routes.dart';
import 'package:finance/core/styling/app_assets.dart';
import 'package:finance/core/styling/app_styles.dart';
import 'package:finance/core/widgets/primary_button_widget.dart';
import 'package:finance/core/widgets/primary_outlined_button.dart';
import 'package:finance/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            AppAssets.onBoard,
            width: double.infinity,
            height: 570.h,
            fit: BoxFit.fill,
          ),
          const HeightSpacing(21),
          PrimaryButtonWidget(
            onPressed: () {
              GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
            },
            buttonText: 'Login',
            width: 331.w,
            height: 56.h,
          ),
          const HeightSpacing(15),
          PrimaryOutlinedButton(
            onPressed: () {
              GoRouter.of(context).pushNamed(AppRoutes.registerScreen);
            },
            buttonText: 'Register',
          ),
          const HeightSpacing(46),
          Text(
            'Continue as Guest',
            style: AppStyles.black15BoldStyle.copyWith(
              color: const Color(0xff202955),
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
