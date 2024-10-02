import 'package:dalel_app/core/app_routes/app_routes_string.dart';
import 'package:dalel_app/core/function/custome_navigate.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    delayedNavigate(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: AppTextStyle.pacifico400Style64,
        ),
      ),
    );
  }
}

//!Delayed Method ;
void delayedNavigate(context) {
  Future.delayed(
    const Duration(seconds: 2),
    () {
      //!Useing Go Router Package
      customeNavigatePushReplacement(context, AppRoutesString.onBoardingScreen);
    },
  );
}
