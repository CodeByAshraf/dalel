import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static final pacifico400Style64 = TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.w400,
    color: AppColors.deepBrown,
    fontFamily: FontStringa.pacifico,
  );
  static final poppins500Style24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontFamily: FontStringa.poppins,
  );
    static final poppins300Style16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.black,
    fontFamily: FontStringa.poppins,
  );
      static final poppins400Style16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.black,
    fontFamily: FontStringa.poppins,
  );
  
}

class FontStringa {
  static const pacifico = "Pacifico";
  static const poppins = "Poppins";
}
