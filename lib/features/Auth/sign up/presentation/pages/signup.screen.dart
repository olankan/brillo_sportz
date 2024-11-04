import 'package:brillo_sportz/core/theme/theme_helper/theme_helper.dart';
import 'package:brillo_sportz/core/theme/widgets/customSnackbar/customSnackbar.widget.dart';
import 'package:brillo_sportz/core/theme/widgets/custom_Circular_Progress_Indicator/circular_progress_indicator.widget.dart';
import 'package:brillo_sportz/core/theme/widgets/custom_container/custom_container.dart';
import 'package:brillo_sportz/core/theme/widgets/custom_text_field/custom_text_field.widget.dart';
import 'package:brillo_sportz/core/utils/utils/image_constant.dart';
import 'package:brillo_sportz/features/Auth/sign%20up/presentation/providers/signUpStateProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SignupScreen extends ConsumerWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpStateProvider = ref.watch(signUpStateNotifierProvider);
    final signUpStateRef = ref.read(signUpStateNotifierProvider.notifier);

    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              170.verticalSpace,
              Image.asset(
                'assets/svgs/brillo.png',
                height: 80.h,
              ),
              20.verticalSpace,
              CustomTextFormField.emailAddress(
                hintText: 'Email',
                formKey: signUpStateProvider.emailFormKey,
                validator: (email) {
                  RegExp emailRegex = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                  if (email!.isEmpty) return 'Enter your email';
                  if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(email)) {
                    return 'Enter a valid email address';
                  }
                  return null;
                },
                controller: signUpStateProvider.emailController,
              ),
              10.verticalSpace,
              CustomTextFormField(
                hintText: 'Username',
                formKey: signUpStateProvider.usernameFormKey,
                validator: (username) {
                  if (username!.isEmpty) return 'Enter your username';
                  return null;
                },
                controller: signUpStateProvider.userNameController,
              ),
              10.verticalSpace,
              CustomTextFormField.password(
                hintText: 'Password',
                formKey: signUpStateProvider.passwordFormKey,
                obscureText: signUpStateProvider.obscurePassword,
                validator: (password) {
                  if (password!.isEmpty) return 'Enter your password';
                  if (password.length < 8)
                    return 'Password must be at least 8 characters';
                  return null;
                },
                controller: signUpStateProvider.passwordController,
                onTapSuffix: () {
                  signUpStateRef.obscurePassword();
                },
              ),
              10.verticalSpace,
              CustomTextFormField.confirmPassword(
                hintText: 'Confirm Password',
                formKey: signUpStateProvider.confirmPasswordFormKey,
                obscureText: signUpStateProvider.obscureConfirmPassword,
                validator: (confirmPassword) {
                  if (confirmPassword!.isEmpty) return 'Confirm your password';
                  if (confirmPassword !=
                      signUpStateProvider.passwordController!.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
                controller: signUpStateProvider.confirmPasswordController,
                onTapSuffix: () {
                  signUpStateRef.obscureConfirmPassword();
                },
              ),
              15.verticalSpace,
              CustomContainer(
                height: 48.h,
                width: double.infinity,
                backgroundColor: PrimaryColors.primary,
                radius: 14.r,
                child: Center(
                  child: signUpStateProvider.isLoading!
                      ? CustomCircularProgressIndicator()
                      : Text(
                          'Sign up',
                          style: TextStyle(
                            color: PrimaryColors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                ),
                onTap: () {
                  if (signUpStateProvider.emailFormKey!.currentState!
                          .validate() &&
                      signUpStateProvider.usernameFormKey!.currentState!
                          .validate() &&
                      signUpStateProvider.passwordFormKey!.currentState!
                          .validate() &&
                      signUpStateProvider.confirmPasswordFormKey!.currentState!
                          .validate()) {
                    if (signUpStateProvider.policyAgreement == true) {
                      // Initiate sign up
                      signUpStateRef.signUpWithEmail(context);
                      print('INITIATED');
                    } else {
                      customSnackBar(context, 'Accept our policy',
                          bgColor: Colors.black);
                    }
                  }
                },
              ),
              10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20.h,
                        width: 20.w,
                        color: Colors.transparent,
                        child: Transform.scale(
                          scale: 1.0,
                          child: Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            side: BorderSide(
                              color: ThemeHelper(context).tertiary,
                            ),
                            activeColor: ThemeHelper(context).tertiary,
                            value: signUpStateProvider.policyAgreement,
                            onChanged: (newBool) {
                              signUpStateRef.updateState(
                                signUpStateProvider.copyWith(
                                    policyAgreement: newBool),
                              );
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      10.horizontalSpace,
                      SizedBox(
                        width: 270.w,
                        child: RichText(
                          text: TextSpan(
                            text: 'I agree to ',
                            style: TextStyle(
                              color: ThemeHelper(context).tertiary,
                              fontSize: 10.sp,
                            ),
                            children: [
                              TextSpan(
                                text: "Uptodo's Terms and Conditions of Use ",
                                style: TextStyle(
                                  color: ThemeHelper(context).tertiary,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'and ',
                                style: TextStyle(
                                  color: ThemeHelper(context).tertiary,
                                  fontSize: 10.sp,
                                ),
                              ),
                              TextSpan(
                                text: 'Privacy Policy.',
                                style: TextStyle(
                                  color: ThemeHelper(context).tertiary,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              80.verticalSpace,
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    context.push('/signin');
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(
                        color: ThemeHelper(context).tertiary,
                        fontSize: 14.sp,
                      ),
                      children: [
                        TextSpan(
                          text: 'Sign in',
                          style: TextStyle(
                            color: ThemeHelper(context).tertiary,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            decorationThickness: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
