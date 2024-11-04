import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

ThemeData get lightAppTheme => ThemeHelper.lightAppTheme();
ThemeData get darkAppTheme => ThemeHelper.darkAppTheme();

class ThemeHelper {
  final BuildContext? context;

  ThemeHelper(this.context);

  Color get primary => Theme.of(context!).colorScheme.primary;
  Color get secondary => Theme.of(context!).colorScheme.secondary;
  Color get tertiary => Theme.of(context!).colorScheme.tertiary;
  static ThemeData lightAppTheme() => FlexColorScheme.light(
        scaffoldBackground: PrimaryColors.white,
        colors: FlexSchemeColor(
          primary: Color(0xff3fd8fd), // Your primary color
          secondary: PrimaryColors.white,
          tertiary: PrimaryColors.black,
        ),
      ).toTheme;

  static ThemeData darkAppTheme() => FlexColorScheme.dark(
        scaffoldBackground: PrimaryColors.black,
        colors: FlexSchemeColor(
          primary: Color(0xff3fd8fd),
          secondary: PrimaryColors.black,
          tertiary: PrimaryColors.white,
        ),
      ).toTheme;
}

class PrimaryColors {
  // Base Colors
  static Color get transparent => Colors.transparent;
  static Color get white => Color(0XFFFFFFFF);
  static Color get black => Color(0XFF000000);

  // Primary Colors
  static Color get primary => Color(0xff3fd8fd);

  static Color get primary10 => Color(0xFFEDE8FF);
  static Color get primary20 => Color(0xFFD5CFFF);
  static Color get primary30 => Color(0xFFBFB7FF);
  static Color get primary40 => Color(0xFFA79EFF);
  static Color get primary50 => Color(0xFF9185FF);
  static Color get primary60 => Color(0xFF7A6DFF);
  static Color get primary70 => Color(0xFF6256FF);
  static Color get primary80 => Color(0xFF4B3FFF);
  static Color get primary90 => Color(0xFF3328FF);

  // Secondary Colors
  static Color get secondary0 => Color(0XFFFFFCE9);
  static Color get secondary10 => Color(0XFFFFF7CC);
  static Color get secondary20 => Color(0XFFFFF2AA);
  static Color get secondary30 => Color(0XFFFFEB80);
  static Color get secondary40 => Color(0XFFFFE455);
  static Color get secondary50 => Color(0XFFFFDE2A);
  static Color get secondary60 => Color(0XFFFFD700);
  static Color get secondary70 => Color(0XFFAA8F00);
  static Color get secondary80 => Color(0XFF806B00);
  static Color get secondary90 => Color(0XFF554800);
  static Color get secondary100 => Color(0XFF332B00);

  // Accent Colors
  static Color get accentGreen => Color(0XFF00B43F);
  static Color get accentBackground => Color(0XFF1C1D23);
  static Color get accentInput => Color(0XFF001B39);
  static Color get accentChatBubble => Color(0XFF2D303B);
  static Color get accentYellow => Color(0XFFFFC403);
  static Color get red => Color(0XFFFF0A2D);
  static Color get pink => Color(0XFFFF0A7E);
  static Color get agreementBg => Color(0XFF4D9CF9).withOpacity(0.2);

  // Gray Styles
  static Color get grayPlaceholder => Color(0XFFA8A8A8);
  static Color get graySecondary => Color(0XFFDDDDDD);
  static Color get grayMainText => Color(0XFFF9FBFF);
  static Color get grayButton => Color(0XFF0F1014);
  static Color get grayStroke => Color(0XFF161616);
  static Color get grayDivider => Color(0XFF383A44);
  static Color get grayIcon => Color(0XFFDBDBDB);
  static Color get grayBorder => Color(0XFF2D6AA066);

  // Error Styles
  static Color get errorStroke => Color(0xffFF8468);
  static Color get errorText => Color(0xffFF8468);
  static Color get errorIcon => Color(0xffEF3739);

  // Neutral Styles
  static Color get neutral => Color(0XFFFCFCFD);
  static Color get neutral10 => Color(0XFFF9FAFB);
  static Color get neutral20 => Color(0XFFF2F4F7);
  static Color get neutral30 => Color(0XFFD0D5DD);
  static Color get neutral40 => Color(0XFF98A2B3);
  static Color get neutral50 => Color(0XFF98A2B3);
  static Color get neutral60 => Color(0XFF667085);
  static Color get neutral70 => Color(0XFF475467);
  static Color get neutral80 => Color(0XFF344054);
  static Color get neutral90 => Color(0XFF1D2939);
  static Color get neutral100 => Color(0XFF101323);

  // Background Colors
  static Color get bgDefault => Color(0XFF2ECC71); // From primary60
  static Color get bgLightest => Color(0XFFF4FFF9); // From primary10
  static Color get bgPressed => Color(0XFF0F4426);
  static Color get bgPlaceholder => Color(0XFFF9FAFB); // From neutral10
  static Color get bgDisabled => Color(0XFFFCFCFD); // From neutral
  static Color get bgSuccess => Color(0XFFE6FFF3).withOpacity(0.07);
  static Color get bgWarning => Color(0XFFFFF5E6);
  static Color get bgDanger => Color(0XFFFFE6E6);
  static Color get bgInfo => Color(0XFFE6F6FF);
  static Color get overlay => Color(0XFFFCFCFD);

  // Other Styles
  static Color get barrierColor => Color(0XFF475467).withOpacity(0.10);
  static Color get textPrimary => Color(0XFF101323); // From neutral100
  static Color get textSecondary => Color(0XFF667085); // From neutral60
  static Color get textDisabled => Color(0XFFD0D5DD); // From neutral30
  static Color get textUtility => Color(0XFF069952);
  static Color get textWarning => Color(0XFFEDA12F);
  static Color get textDanger => Color(0XFFE62E2E);
  static Color get textInfo => Color(0XFF0081CC);
  static Color get overlayWarning => Color(0XFFFAAD14);
}
