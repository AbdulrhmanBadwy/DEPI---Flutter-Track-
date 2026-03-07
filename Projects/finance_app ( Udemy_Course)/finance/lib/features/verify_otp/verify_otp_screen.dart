import 'package:finance/core/routing/app_routes.dart';
import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/styling/app_styles.dart';
import 'package:finance/core/widgets/primary_button_widget.dart';
import 'package:finance/core/widgets/spacing_widget.dart';
import 'package:finance/core/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOTPScreen extends StatefulWidget {
  const VerifyOTPScreen({super.key});

  @override
  State<VerifyOTPScreen> createState() => _VerifyOTPScreenState();
}

class _VerifyOTPScreenState extends State<VerifyOTPScreen> {
  final formKey = GlobalKey<FormState>();
  late PinInputController pinCodeController;

  @override
  void initState() {
    super.initState();
    pinCodeController = PinInputController();
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
                    width: 280.w,
                    child: Text(
                      'OTP Verification',
                      style: AppStyles.primaryHeadLineStyle,
                    ),
                  ),
                  const HeightSpacing(10),
                  Text(
                    'Enter the verification code we just sent on your email address.',
                    style: AppStyles.subtitleStyle,
                  ),
                  const HeightSpacing(32),
                  PinInput(
                    pinController: pinCodeController,
                    length: 4,
                    builder: (context, cells) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: cells.map((cell) {
                          return Container(
                            margin: EdgeInsets.only(right: 17.w),
                            width: 65.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: BoxBorder.all(
                                color: AppColors.primaryColor,
                                width: 1.2.w
                              ),
                              color: cell.isFocused
                                  ? Colors.white
                                  : Colors.grey.shade200,
                            ),
                            child: Center(
                              child: Text(
                                cell.character ?? '',
                                style: TextStyle(
                                  fontSize: 22.sp,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      );
                    },
                  ),
                  const HeightSpacing(38),
                  PrimaryButtonWidget(
                    onPressed: (){
                      GoRouter.of(context).pushReplacement(AppRoutes.createNewPassword);
                    },
                    buttonText: 'Verify',
                    width: 331.w,
                    height: 56.h,
                  ),
                  const HeightSpacing(375),
                  Center(
                    child: InkWell(
                      onTap: (){
                        GoRouter.of(context).pushReplacement(AppRoutes.verifyOTPScreen);
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Didn’t received code?",
                          style: AppStyles.black15BoldStyle.copyWith(
                            color: AppColors.primaryColor,
                          ),
                          children: [
                            TextSpan(
                              text: 'Resend',
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
