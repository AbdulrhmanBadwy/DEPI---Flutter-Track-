import 'package:finance/core/routing/app_routes.dart';
import 'package:finance/core/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/styling/app_styles.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/widgets/primary_button_widget.dart';
import '../../core/widgets/spacing_widget.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController newPasswordController;
  late TextEditingController confirmNewPasswordController;

  @override
  void initState() {
    super.initState();
    newPasswordController = TextEditingController();
    confirmNewPasswordController = TextEditingController();
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create new password',
                          style: AppStyles.primaryHeadLineStyle,
                        ),
                        Text(
                          "Your new password must be unique from those previously used.",
                          style: AppStyles.grey12MediumStyle.copyWith(
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const HeightSpacing(32),
                  CustomTextField(
                    hintText: 'New Password',
                    controller: newPasswordController,
                    validator: (value) {
                      if (value!.isEmpty) return 'Enter New Password';
                      if (newPasswordController.text !=
                          confirmNewPasswordController.text)
                        {
                          return " Passwords Must be The Same ";

                        }
                      return null;
                    },
                  ),
                  const HeightSpacing(15),
                  CustomTextField(
                    hintText: 'Confirm Password',
                    controller: confirmNewPasswordController,
                    validator: (value) {
                      if (value!.isEmpty) return 'Enter Confirm Password';
                      if (newPasswordController.text !=
                          confirmNewPasswordController.text)
                        {
                          return " Passwords Must be The Same ";

                        }
                      return null;
                    },
                  ),

                  const HeightSpacing(38),
                  PrimaryButtonWidget(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        GoRouter.of(context).pushNamed(AppRoutes.successfulScreen);
                      }
                    },
                    buttonText: 'Reset Password',
                    width: 331.w,
                    height: 56.h,
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
