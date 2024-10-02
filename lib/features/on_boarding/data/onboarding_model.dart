import 'package:dalel_app/core/utils/app_images.dart';

class OnboardingModel {
  String imagePath;
  String title;
  String subTitle;
  OnboardingModel({
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });
}

List<OnboardingModel> onBordingData = [
  OnboardingModel(
    imagePath: AppImages.imagesOnBoarding,
    title: "Explore The history with Dalel in a smart way",
    subTitle: "Using our app's history libearies you can find manyhistorical periods",
  ),
  OnboardingModel(
    imagePath: AppImages.imagesOnBoarding1,
    title: "From evry place on earth",
    subTitle: "A big variety of ancient places from all over the world",
  ),
  OnboardingModel(
    imagePath: AppImages.imagesOnBoarding2,
    title: "Using modern AI technology for better user experience",
    subTitle: "AI provide recommendations and helps you to continue the search journey",
  )
];
