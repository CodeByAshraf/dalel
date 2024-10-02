import 'package:dalel_app/core/app_routes/app_routes_string.dart';
import 'package:dalel_app/core/function/custome_navigate.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/core/widget/custome_buttom.dart';
import 'package:dalel_app/features/on_boarding/data/onboarding_model.dart';
import 'package:flutter/material.dart';

class SettingOnboardingButtons extends StatelessWidget {
  const SettingOnboardingButtons(
      {super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBordingData.length - 1) {
      return Column(
        children: [
          CustomeButtom(
            buttonText: AppStrings.createAccount,
            color: AppColors.primaryColor,
            onPressed: () {
              customeNavigatePushReplacement(
                  context, AppRoutesString.creatAccount);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              customeNavigatePushReplacement(
                  context, AppRoutesString.loginScreen);
            },
            child: Text(
              AppStrings.loginNow,
              style: AppTextStyle.poppins400Style16
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      );
    } else {
      return CustomeButtom(
        buttonText: AppStrings.next,
        color: AppColors.primaryColor,
        onPressed: () {
          controller.nextPage(
              duration: const Duration(milliseconds: 200),
              curve: Curves.bounceIn);
        }, //!Video Num 8
      );
    }
  }
}
