import 'package:brillo_sportz/core/theme/theme_helper/theme_helper.dart';
import 'package:brillo_sportz/core/theme/widgets/customSnackbar/customSnackbar.widget.dart';
import 'package:brillo_sportz/core/theme/widgets/custom_container/custom_container.dart';
import 'package:brillo_sportz/core/theme/widgets/custom_text_field/custom_text_field.widget.dart';
import 'package:brillo_sportz/core/theme/widgets/custom_text_style/custom_text_style.dart';
import 'package:brillo_sportz/features/dashboard/pages/settings.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/svgs/brillo.png',
              height: 100.h,
            ),
            20.verticalSpace,
            CustomContainer(
              backgroundColor: ThemeHelper(context).secondary,
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 8.h,
              ),
              radius: 20.r,
              height: 200.h,
              width: 350.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Forgot password',
                    style: CustomTextStyles(context).boldH5Poppins_24x6,
                  ),
                  10.verticalSpace,
                  CustomTextFormField.emailAddress(
                    hintText: 'e.g. Enter your recovery Email',
                  ),
                  20.verticalSpace,
                  Align(
                      alignment: Alignment.centerRight,
                      child: CustomContainer(
                        radius: 10.r,
                        height: 40.h,
                        width: 160.w,
                        onTap: () {
                          customSnackBar(
                              context, 'Password updated successfully');
                          context.pop();
                        },
                        child: Center(
                          child: Text(
                            'Recover password',
                            style: CustomTextStyles(context)
                                .body1BoldPoppins_15x6
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
