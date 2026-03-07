import 'package:finance/core/routing/app_routes.dart';
import 'package:finance/core/widgets/spacing_widget.dart';
import 'package:finance/core/widgets/back_button_widget.dart';
import 'package:finance/features/auth/widgets/custom_or_login_widget.dart';
import 'package:finance/features/auth/widgets/social_login_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/styling/app_colors.dart';
import '../../core/styling/app_styles.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/widgets/primary_button_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController userNameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  @override
  void initState() {
    super.initState();
    userNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
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
                  SizedBox(
                    width: 331.w,
                    child: Text(
                      'Hello! Register to get started',
                      style: AppStyles.primaryHeadLineStyle,
                    ),
                  ),
                  const HeightSpacing(32),
                  CustomTextField(
                    hintText: 'Username',
                    controller: userNameController,
                    validator: (value) {
                      if (value!.isEmpty) return 'Enter Your Username';
                      return null;
                    },
                  ),

                  const HeightSpacing(12),
                  CustomTextField(
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) return 'Enter Your Email';
                      return null;
                    },
                    hintText: 'Email',
                  ),

                  const HeightSpacing(12),
                  CustomTextField(
                    hintText: 'Password',
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Your Password';
                      }
                      if (value.length < 8) {
                        return 'Password Must be at least 8 characters';
                      }
                      if (passwordController.text !=
                          confirmPasswordController.text) {
                        return 'Password Must be The Same';
                      }
                      return null;
                    },
                  ),

                  const HeightSpacing(12),
                  CustomTextField(
                    hintText: 'Confirm Password',
                    controller: confirmPasswordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Confirm Password';
                      }
                      if (value.length < 8) {
                        return 'Password Must be at least 8 characters';
                      }
                      if (passwordController.text !=
                          confirmPasswordController.text) {
                        return 'Password Must be The Same';
                      }
                      return null;
                    },
                  ),

                  const HeightSpacing(30),
                  PrimaryButtonWidget(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    buttonText: 'Register',
                    width: 331.w,
                    height: 56.h,
                  ),

                  const HeightSpacing(35),
                  CustomOrLoginWidget(text: 'Or Register With'),

                  const HeightSpacing(22),
                  CustomSocialLoginButton(),

                  const HeightSpacing(54),
                  Center(
                    child: InkWell(
                      onTap: (){
                        GoRouter.of(context).pushReplacement(AppRoutes.loginScreen);
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Already have an account?",
                          style: AppStyles.black15BoldStyle.copyWith(
                            color: AppColors.primaryColor,
                          ),
                          children: [
                            TextSpan(
                              text: 'Login Now',
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
