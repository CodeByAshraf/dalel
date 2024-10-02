import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomeButtom extends StatelessWidget {
  final Color color;
  final String buttonText;
  final VoidCallback onPressed;
  const CustomeButtom({
    super.key,
    required this.buttonText,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed:onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          buttonText,
          style: AppTextStyle.poppins500Style24.copyWith(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
