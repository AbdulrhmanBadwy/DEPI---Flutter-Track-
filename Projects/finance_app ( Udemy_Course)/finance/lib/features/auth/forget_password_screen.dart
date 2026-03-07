import 'package:finance/core/routing/app_routes.dart';
import 'package:finance/core/styling/app_styles.dart';
import 'package:finance/core/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/styling/app_colors.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/widgets/primary_button_widget.dart';
import '../../core/widgets/spacing_widget.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeightSpacing(12),
                  BackButtonWidget(),
                  const HeightSpacing(28),
                  SizedBox (
                    width: 331.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: AppStyles.primaryHeadLineStyle,
                        ),
                        Text(
                          "Don't worry! It occurs. Please enter the email address linked with your account.",
                          style: AppStyles.grey12MediumStyle.copyWith(
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const HeightSpacing(32),
                  CustomTextField(
                    hintText: 'Enter your Email',
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) return 'Enter Your Email';
                      return null;
                    },
                  ),

                  const HeightSpacing(38),
                  PrimaryButtonWidget(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        GoRouter.of(context).pushNamed(AppRoutes.verifyOTPScreen);
                      }
                    },
                    buttonText: 'Send Code',
                    width: 331.w,
                    height: 56.h,
                  ),
                  const HeightSpacing(361),

                  Center(
                    child: InkWell(
                      onTap: (){
                        GoRouter.of(context).pushReplacement(AppRoutes.loginScreen);
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Remember Password?",
                          style: AppStyles.black15BoldStyle.copyWith(
                            color: AppColors.primaryColor,
                          ),
                          children: [
                            TextSpan(
                              text: 'Login',
                              style: AppStyles.black15BoldStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
