import 'package:brillo_sportz/core/theme/theme_helper/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

double getLineHeight({required double lineHeight, required double fontSize}) {
  return (lineHeight / fontSize).sp;
}

extension on TextStyle {
  TextStyle get omnes {
    return copyWith(
      fontFamily: 'Omnes',
    );
  }

  TextStyle get Poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle withColor(Color color) {
    return TextStyle(
      color: color,
      fontSize: this.fontSize,
      fontWeight: this.fontWeight,
      fontStyle: this.fontStyle,
      letterSpacing: this.letterSpacing,
      wordSpacing: this.wordSpacing,
      height: this.height,
      fontFamily: this.fontFamily,
      decoration: this.decoration,
      decorationColor: this.decorationColor,
      decorationStyle: this.decorationStyle,
      decorationThickness: this.decorationThickness,
      debugLabel: this.debugLabel,
      fontFamilyFallback: this.fontFamilyFallback,
      shadows: this.shadows,
      fontFeatures: this.fontFeatures,
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  final BuildContext context;

  CustomTextStyles(this.context);

  static TextStyle get buttonText => TextStyle(
        color: PrimaryColors.accentInput,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        // height: 0.24.sp,
      );
  // Body style
  TextStyle get bodyLargeOmnes => ThemeData().textTheme.bodyLarge!.omnes;
  TextStyle get bodyMediumOmnes => ThemeData().textTheme.bodyMedium!.omnes;
  TextStyle get bodyLargePoppins => ThemeData().textTheme.bodyLarge!.Poppins;
  TextStyle get bodyMediumPoppins => ThemeData().textTheme.bodyMedium!.Poppins;
  TextStyle get bodySmallFPro => ThemeData().textTheme.bodySmall!.Poppins;
  // Caption style
  static TextStyle get captionLargePoppins =>
      ThemeData().textTheme.displayLarge!.Poppins;
  static TextStyle get captionMediumPoppins =>
      ThemeData().textTheme.displayMedium!.Poppins;
  static TextStyle get captionSmallPoppins =>
      ThemeData().textTheme.displaySmall!.Poppins;

  ///
  TextStyle get boldH4Omnes_32x7 => bodyLargeOmnes.copyWith(
      fontSize: 28.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.1);

  ///
  TextStyle get boldH1Poppins_56x7 => bodyLargePoppins.copyWith(
      fontSize: 56.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.2);

  ///
  TextStyle get boldH2Poppins_48x7 => bodyLargePoppins.copyWith(
      fontSize: 48.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.2);

  ///
  TextStyle get boldH3Poppins_38x7 => bodyLargePoppins.copyWith(
      fontSize: 35.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.1);

  ///
  TextStyle get boldH4Poppins_32x7 => bodyLargePoppins.copyWith(
      fontSize: 32.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.1);

  ///
  TextStyle get boldH4Poppins_31x7 => bodyLargePoppins.copyWith(
      fontSize: 31.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.1);

  ///
  TextStyle get boldH5Poppins_24x7 => bodyLargePoppins.copyWith(
      fontSize: 24.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.1);

  ///
  TextStyle get boldH5Poppins_24x6 => bodyLargePoppins.copyWith(
      fontSize: 20.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w600,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.1);

  ///
  TextStyle get boldH6Poppins_18x7 => bodyLargePoppins.copyWith(
      fontSize: 18.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.08);

  ///
  TextStyle get boldH6Poppins_26x6 => bodyLargePoppins.copyWith(
      fontSize: 26.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w600,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.08);

  ///
  TextStyle get boldH6Poppins_16x5 => bodyLargePoppins.copyWith(
      fontSize: 16.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.08);

  ///
  TextStyle get boldH6Poppins_16x6 => bodyLargePoppins.copyWith(
      fontSize: 16.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w600,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.08);

  ///
  TextStyle get boldH6Poppins_80x6 => bodyLargePoppins.copyWith(
      fontSize: 80.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w600,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.08);

  ///
  TextStyle get boldH6Poppins_40x4 => bodyLargePoppins.copyWith(
      fontSize: 40.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w400,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.08);

  ///
  TextStyle get boldH6Poppins_20x5 => bodyLargePoppins.copyWith(
      fontSize: 20.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.08);

  ///
  TextStyle get boldH6Poppins_24x5 => bodyLargePoppins.copyWith(
      fontSize: 24.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.08);

  ///
  TextStyle get boldH6Poppins_14x4 => bodyLargePoppins.copyWith(
      fontSize: 14.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w400,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.08);

  ///
  TextStyle get boldH6Poppins_18x6 => bodyLargePoppins.copyWith(
      fontSize: 18.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w600,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.08);

  ///
  TextStyle get boldH6Poppins_18x5 => bodyLargePoppins.copyWith(
      fontSize: 18.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.08);

  ///
  TextStyle get boldH6Poppins_18x4 => bodyLargePoppins.copyWith(
      fontSize: 18.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w400,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.08);

  ///
  TextStyle get boldH6Poppins_12x4 => bodyLargePoppins.copyWith(
      fontSize: 12.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w400,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.08);

  ///
  TextStyle get semiBoldH1Poppins_56x7 => bodyMediumPoppins.copyWith(
      fontSize: 56.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.2);

  ///
  TextStyle get semiBoldH2Poppins_48x7 => bodyMediumPoppins.copyWith(
      fontSize: 48.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.2);

  ///
  TextStyle get semiBoldH3Poppins_38x7 => bodyMediumPoppins.copyWith(
      fontSize: 38.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.1);
  TextStyle get semiBoldOmnes_36x7 => bodyMediumPoppins.copyWith(
      fontSize: 36.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.1);

  ///

  TextStyle get semiBoldH3Poppins_36x7 => bodyMediumPoppins.copyWith(
      fontSize: 36.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.1);

  ///
  TextStyle get semiBoldH3Poppins_12x5 => bodyMediumPoppins.copyWith(
      fontSize: 12.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.1);

  ///
  TextStyle get semiBoldH4Poppins_32x7 => bodyMediumPoppins.copyWith(
      fontSize: 32.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.1);

  ///
  TextStyle get semiBoldH5Poppins_24x5 => bodyMediumPoppins.copyWith(
      fontSize: 24.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.1);

  ///
  TextStyle get semiBoldOmnes_28x7 => bodyMediumOmnes.copyWith(
      fontSize: 28.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w700,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.1);

  ///
  TextStyle get semiBoldH6Poppins_18x7 => bodyMediumPoppins.copyWith(
      fontSize: 18.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w500,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.08);

  ///
  ///
  TextStyle get body1Poppins_15x4 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 15.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w400,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.4);

  ///
  TextStyle get body1Poppins_15x5 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 15.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w500,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.4);

  ///
  TextStyle get body1Poppins_14x5 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 14.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w500,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.4);

  ///
  TextStyle get body1Poppins_16x5 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 16.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w500,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.4);

  ///
  TextStyle get body1Poppins_10x5 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 10.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w500,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.4);

  ///
  TextStyle get body1Poppins_9x7 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 9.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w700,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.4);

  ///
  TextStyle get body1Poppins_16x6 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 16.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w600,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.4);

  ///
  TextStyle get body1Poppins_31x7 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 31.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w700,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.4);

  ///
  TextStyle get body1Poppins_14x4 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 14.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w400,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.4);

  ///
  TextStyle get body1Poppins_14x3 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 14.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w300,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.4);

  ///
  TextStyle get body1Poppins_14x7 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 14.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w700,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.4);

  ///
  TextStyle get body1Poppins_14x6 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 14.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w600,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.4);

  ///
  TextStyle get body1Poppins_12x4 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 12.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w400,
          // height: 2.sp,
          // color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.4);

  ///
  TextStyle get body1Poppins_12x5 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 12.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w500,
          // height: 2.sp,
          // color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.4);

  TextStyle get body1BoldPoppins_15x7 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 15.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w700,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.4);

  ///
  TextStyle get body1BoldPoppins_16x6 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 16.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w600,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.4);

  ///
  TextStyle get body1BoldPoppins_15x6 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 15.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w600,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.4);

  ///
  TextStyle get body1BoldPoppins_17x6 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 17.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w600,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.4);

  TextStyle get body2Poppins_13x4 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 13.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w400,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.2);

  TextStyle get body2BoldPoppins_13x7 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 15.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w400,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.4);

  TextStyle get textFieldPoppins_17x4 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 17.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w400,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.3);

  ///

  TextStyle get textFieldPoppins_20x4 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 20.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w400,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.3);

  ///
  TextStyle get textFieldPoppins_14x4 =>
      ThemeData().textTheme.bodySmall!.Poppins.copyWith(
          fontSize: 14.sp,
          color: ThemeHelper(context).tertiary,
          fontWeight: FontWeight.w400,
          // height: 2.sp, color: ThemeHelper(context!).tertiary,
          letterSpacing: -0.3);

  ///
  TextStyle get caption1Poppins_11x4 => captionLargePoppins.copyWith(
      fontSize: 11.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w400,
      // height: 2.sp, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.1);

  TextStyle get caption2Poppins_11x4 => captionLargePoppins.copyWith(
      fontSize: 10.sp,
      color: ThemeHelper(context).tertiary,
      fontWeight: FontWeight.w400,
      // height: 2.sp, color: ThemeHelper(context!).tertiary, color: ThemeHelper(context!).tertiary,
      letterSpacing: -0.1);
}
