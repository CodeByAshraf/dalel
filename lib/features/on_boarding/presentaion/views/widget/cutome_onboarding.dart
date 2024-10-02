import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/features/on_boarding/data/onboarding_model.dart';
import 'package:dalel_app/features/on_boarding/presentaion/views/widget/custome_smothpage.dart';
import 'package:flutter/material.dart';

class CustomeOnBaording extends StatelessWidget {
  final String imagePath;
  final PageController controller;
  final Function(int)? onChanged;
  const CustomeOnBaording(
      {super.key, required this.imagePath, required this.controller, required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onChanged,
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: onBordingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 343,
                height: 290,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(onBordingData[index].imagePath),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomeSmothpageIndicator(controller: controller),
              const SizedBox(
                height: 24,
              ),
              Text(
                onBordingData[index].title,
                style: AppTextStyle.poppins500Style24
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                onBordingData[index].subTitle,
                style: AppTextStyle.poppins300Style16,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        },
      ),
    );
  }
}
