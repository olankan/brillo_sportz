import 'package:brillo_sportz/core/theme/theme_helper/theme_helper.dart';
import 'package:brillo_sportz/core/theme/widgets/custom_Circular_Progress_Indicator/circular_progress_indicator.widget.dart';
import 'package:brillo_sportz/core/theme/widgets/custom_container/custom_container.dart';
import 'package:brillo_sportz/core/theme/widgets/custom_text_field/custom_text_field.widget.dart';
import 'package:brillo_sportz/features/Auth/sign%20in/presentation/providers/signInStateProvider.dart';
import 'package:brillo_sportz/core/theme/widgets/customSnackbar/customSnackbar.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SigninScreen extends ConsumerWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInstateProvider = ref.watch(signInStateNotifierProvider);
    final signInstateRef = ref.read(signInStateNotifierProvider.notifier);

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
                formKey: signInstateProvider.emailFormKey,
                controller: signInstateProvider.emailController,
                validator: (username) {
                  if (username!.isEmpty) return 'Enter your username';
                  return null;
                },
              ),
              10.verticalSpace,
              CustomTextFormField.password(
                hintText: 'Password',
                obscureText: signInstateProvider.obscurePassword,
                controller: signInstateProvider.passwordController,
                formKey: signInstateProvider.passwordFormKey,
                validator: (password) {
                  if (password!.isEmpty) return 'Enter your password';
                  if (password.length < 8)
                    return 'Password must be at least 8 characters';
                  return null;
                },
                onTapSuffix: () {
                  signInstateRef.obscurePassword();
                },
              ),
              10.verticalSpace,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  children: [
                    Container(
                      height: 20.h,
                      width: 20.w,
                      color: PrimaryColors.transparent,
                      child: Transform.scale(
                        scale: 1.0,
                        child: Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          side: BorderSide(
                            color: ThemeHelper(context).tertiary,
                          ),
                          value: signInstateProvider.rememberMe,
                          activeColor: ThemeHelper(context).tertiary,
                          checkColor: ThemeHelper(context).secondary,
                          onChanged: (newBool) {
                            signInstateRef.updateState(signInstateProvider
                                .copyWith(rememberMe: newBool));
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    2.horizontalSpace,
                    Text('Remember me',
                        style: TextStyle(
                          color: ThemeHelper(context).tertiary,
                          fontSize: 14.sp,
                        ))
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    // customSnackBar(context, 'Coming soon');
                    context.push('/forgot');
                  },
                  child: Text('Forgot password?',
                      style: TextStyle(
                        color: ThemeHelper(context).tertiary,
                        fontSize: 14.sp,
                      )),
                )
              ]),
              15.verticalSpace,
              CustomContainer(
                height: 48.h,
                width: double.infinity,
                backgroundColor: PrimaryColors.primary,
                radius: 14.r,
                child: Center(
                  child: signInstateProvider.isLoading == true
                      ? CustomCircularProgressIndicator()
                      : Text('Sign in',
                          style: TextStyle(
                              color: PrimaryColors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500)),
                ),
                onTap: () {
                  if (signInstateProvider.emailFormKey!.currentState!
                          .validate() &&
                      signInstateProvider.passwordFormKey!.currentState!
                          .validate()) {
                    signInstateRef.loginUser(context);
                    // print('INITIATED');
                  }
                },
              ),
              10.verticalSpace,
              SizedBox(
                width: 250.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100.w,
                      child: Divider(
                        color: PrimaryColors.neutral70,
                      ),
                    ),
                    5.horizontalSpace,
                    Text('OR',
                        style: TextStyle(
                          color: ThemeHelper(context).tertiary,
                          fontSize: 12.sp,
                        )),
                    5.horizontalSpace,
                    SizedBox(
                      width: 100.w,
                      child: Divider(
                        color: PrimaryColors.neutral70,
                      ),
                    ),
                  ],
                ),
              ),
              10.verticalSpace,
              CustomContainer(
                height: 48.h,
                width: double.infinity,
                borderColor: PrimaryColors.white,
                backgroundColor: PrimaryColors.black,
                radius: 14.r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/google.svg',
                      fit: BoxFit.scaleDown,
                    ),
                    10.horizontalSpace,
                    Text('Sign in with Google',
                        style: TextStyle(
                            color: PrimaryColors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                onTap: () {
                  customSnackBar(context, 'Coming soon...');
                },
              ),
              120.verticalSpace,
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    context.pop(context);
                  },
                  child: RichText(
                    text: TextSpan(
                        text: '''Don't have an account? ''',
                        style: TextStyle(
                          color: ThemeHelper(context).tertiary,
                          fontSize: 14.sp,
                        ),
                        children: [
                          TextSpan(
                              text: 'Sign up',
                              style: TextStyle(
                                  color: ThemeHelper(context).tertiary,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 0.5))
                        ]),
                  ),
                ),
              ),
              // SignInWithEmailButton(caller: client.modules.auth)
            ],
          ),
        ),
      ),
    ));
  }
}
