import 'dart:ui';

import 'package:brillo_sportz/core/theme/theme_helper/theme_helper.dart';

import 'package:brillo_sportz/core/theme/widgets/custom_container/custom_container.dart';
import 'package:brillo_sportz/core/theme/widgets/custom_text_style/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void customSnackBar(BuildContext context, String message,
    {Color? bgColor, Color? textColor}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        backgroundColor: Colors.transparent,
        content: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.1, sigmaY: 2.1),
          child: CustomContainer(
            backgroundColor: Colors.transparent,
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20.0.h),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomContainer(
                  backgroundColor: bgColor ?? PrimaryColors.black,
                  borderColor: PrimaryColors.primary10,
                  width: 270.w,
                  height: 40.h,
                  child: Center(
                    child: Text(
                      message,
                      style:
                          CustomTextStyles(context).body1Poppins_16x5.copyWith(
                                color: textColor ?? PrimaryColors.white,
                              ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )),
  );
}
