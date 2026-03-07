import 'package:finance/core/routing/app_routes.dart';
import 'package:finance/features/auth/create_new_password_screen.dart';
import 'package:finance/features/auth/forget_password_screen.dart';
import 'package:finance/features/auth/login_screen.dart';
import 'package:finance/features/auth/register_screen.dart';
import 'package:finance/features/auth/success_change_password_screen.dart';
import 'package:finance/features/on_boarding/on_boarding_screen.dart';
import 'package:finance/features/verify_otp/verify_otp_screen.dart';
import 'package:go_router/go_router.dart';

class RouterGenerationConfig {
  static final GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingScreen,
    routes: [
      GoRoute(
        path: AppRoutes.onBoardingScreen,
        builder: (context, state) => const OnBoardingScreen(),
        name: AppRoutes.onBoardingScreen,
      ),
      GoRoute(
        path: AppRoutes.loginScreen,
        builder: (context, state) => const LoginScreen(),
        name: AppRoutes.loginScreen,
      ),
      GoRoute(
        path: AppRoutes.registerScreen,
        builder: (context, state) => const RegisterScreen(),
        name: AppRoutes.registerScreen,
      ),
      GoRoute(
        path: AppRoutes.forgetPassword,
        builder: (context, state) => const ForgetPasswordScreen(),
        name: AppRoutes.forgetPassword,
      ),
      GoRoute(
        path: AppRoutes.verifyOTPScreen,
        builder: (context, state) => const VerifyOTPScreen(),
        name: AppRoutes.verifyOTPScreen,
      ),
      GoRoute(
        path: AppRoutes.successfulScreen,
        builder: (context, state) => const SuccessChangePasswordScreen(),
        name: AppRoutes.successfulScreen,
      ),
      GoRoute(
        path: AppRoutes.createNewPassword,
        builder: (context, state) => const CreateNewPasswordScreen(),
        name: AppRoutes.createNewPassword,
      ),
    ],
  );
}