import 'package:dalel_app/core/app_routes/app_routes_string.dart';
import 'package:dalel_app/features/auth/presentaion/views/creat_account.dart';
import 'package:dalel_app/features/auth/presentaion/views/login.dart';
import 'package:dalel_app/features/on_boarding/presentaion/views/onboarding_screen.dart';
import 'package:dalel_app/features/splash_view/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutesString.splashView,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: AppRoutesString.onBoardingScreen,
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: AppRoutesString.creatAccount,
      builder: (context, state) => const CreatAccount(),
    ),
    GoRoute(
      path: AppRoutesString.loginScreen,
      builder: (context, state) => const LogInScreen(),
    ),
  ],
);
