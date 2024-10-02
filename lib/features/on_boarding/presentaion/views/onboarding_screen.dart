import 'package:dalel_app/core/utils/app_images.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/features/on_boarding/presentaion/views/widget/cutome_onboarding.dart';
import 'package:dalel_app/features/on_boarding/presentaion/views/widget/setting_onboarding_buttons.dart';
import 'package:flutter/material.dart';
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            right: 10,
            left: 10,
            bottom: 10,
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  AppStrings.skip,
                  style: AppTextStyle.poppins300Style16
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ),
              CustomeOnBaording(
                imagePath: AppImages.imagesOnBoarding,
                controller: _controller,
                onChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              const SizedBox(
                height: 15,
              ),
              SettingOnboardingButtons(currentIndex: currentIndex, controller: _controller),
            ],
          ),
        ),
      ),
    );
  }
}


