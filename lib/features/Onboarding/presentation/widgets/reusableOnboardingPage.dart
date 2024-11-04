import 'package:brillo_sportz/core/theme/theme_helper/theme_helper.dart';

import 'package:brillo_sportz/core/theme/widgets/custom_text_style/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ReusableOnboardingPage extends StatelessWidget {
  const ReusableOnboardingPage({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  final String title;
  final String description;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeHelper(context).secondary,
      margin: EdgeInsets.symmetric(horizontal: 56.w),
      child: Column(
        children: [
          // SvgPicture.asset(imageUrl, width: 315.w, height: 280.h),
          Image.asset('assets/svgs/brillo.png'),
          50.verticalSpace,
          Text(title,
              textAlign: TextAlign.center,
              style: CustomTextStyles(context)
                  .boldH6Poppins_18x7
                  .copyWith(color: ThemeHelper(context).tertiary)),
          4.96.verticalSpace,
          Text(description,
              textAlign: TextAlign.center,
              style: CustomTextStyles(context)
                  .boldH6Poppins_14x4
                  .copyWith(color: ThemeHelper(context).tertiary)),
          38.81.verticalSpace
        ],
      ),
    );
  }
}
