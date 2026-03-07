import 'package:finance/core/routing/app_routes.dart';
import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/styling/app_styles.dart';
import 'package:finance/core/widgets/custom_text_field.dart';
import 'package:finance/core/widgets/primary_button_widget.dart';
import 'package:finance/core/widgets/spacing_widget.dart';
import 'package:finance/core/widgets/back_button_widget.dart';
import 'package:finance/features/auth/widgets/custom_or_login_widget.dart';
import 'package:finance/features/auth/widgets/social_login_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController password;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    password = TextEditingController();
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
                      'Welcome back! Again!',
                      style: AppStyles.primaryHeadLineStyle,
                    ),
                  ),
                  const HeightSpacing(32),
                  CustomTextField(
                    hintText: 'Enter your Email',
                    controller: emailController,
                    validator: (value){
                      if(value!.isEmpty) return 'Enter Your Email';
                      return null;

                    },
                  ),

                  const HeightSpacing(15),
                  CustomTextField(
                    controller: password,
                    validator: (value){
                      if(value!.isEmpty) return 'Enter Your Password';
                      if(value.length <8 ) return 'Password must be at Least 8 Characters';
                      return null;
                    },
                    hintText: 'Enter your Password',
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: AppColors.greyColor,
                        size: 20.sp,
                      ),
                    ),
                  ),

                  const HeightSpacing(15),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: (){
                        GoRouter.of(context).pushReplacement(AppRoutes.forgetPassword);
                      },
                      child: Text(
                        'Forget Password?',
                        style: AppStyles.black15BoldStyle.copyWith(
                          color: Color(0xff6A707C),
                        ),
                      ),
                    ),
                  ),

                  const HeightSpacing(30),
                  PrimaryButtonWidget(
                    onPressed: () {
                      if(formKey.currentState!.validate()){
                        GoRouter.of(context).pushReplacement(AppRoutes.verifyOTPScreen);
                      }
                    },
                    buttonText: 'Login',
                    width: 331.w,
                    height: 56.h,
                  ),

                  const HeightSpacing(35),
                  CustomOrLoginWidget(text: 'Or Login With ',),

                  const HeightSpacing(22),
                  CustomSocialLoginButton(),

                  const HeightSpacing(155),
                  Center(
                    child: InkWell(
                      onTap: (){
                        GoRouter.of(context).pushReplacement(AppRoutes.registerScreen);
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Don't have an account?",
                          style: AppStyles.black15BoldStyle.copyWith(
                            color: AppColors.primaryColor,
                          ),
                          children: [
                            TextSpan(
                              text: 'Register Now',
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
