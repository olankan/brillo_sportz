import 'package:brillo_sportz/core/theme/theme_helper/theme_helper.dart';

import 'package:brillo_sportz/core/theme/widgets/custom_container/custom_container.dart';
import 'package:brillo_sportz/core/theme/widgets/custom_text_style/custom_text_style.dart';
import 'package:brillo_sportz/core/utils/utils/image_constant.dart';
import 'package:brillo_sportz/features/Onboarding/presentation/widgets/reusableOnboardingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainOnboardingScreen extends StatelessWidget {
  MainOnboardingScreen({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) async {
        if (didPop) {
          return SystemNavigator.pop();
        }
        // SystemNavigator.pop();
      },
      child: Scaffold(
        backgroundColor: ThemeHelper(context).secondary,
        body: Center(
          child: Column(
            children: [
              65.verticalSpace,
              CustomContainer(
                backgroundColor: ThemeHelper(context).secondary,
                height: 540.h,
                width: double.infinity,
                child: PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ReusableOnboardingPage(
                      title: 'Personalized Sports News Feed',
                      description:
                          'Get tailored updates on your favorite sports, teams, and players. Choose your preferences, and we’ll deliver the latest news, scores, and highlights—all in one place!',
                      imageUrl: ImageConstant.imgOnboarding1,
                    ),
                    ReusableOnboardingPage(
                      title: 'Never Miss a Moment!',
                      description:
                          'Follow live scores and real-time statistics from matches around the world. Get detailed insights and stay connected to every play, every score, and every victory!',
                      imageUrl: ImageConstant.imgOnboarding2,
                    ),
                    ReusableOnboardingPage(
                      title: 'Connect and Compete with Friends',
                      description:
                          'Create a profile, join your friends, and track each other’s favorite teams and achievements. Set up challenges, compete, and celebrate together!',
                      imageUrl: ImageConstant.imgOnboarding3,
                    )
                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: SwapEffect(
                    dotHeight: 6.h,
                    dotWidth: 6.w,
                    dotColor: PrimaryColors.grayPlaceholder,
                    activeDotColor: PrimaryColors.primary,
                    spacing: 6.r),
              ),
              20.verticalSpace,
              CustomContainer(
                height: 45.h,
                width: 364.w,
                margin: EdgeInsets.symmetric(horizontal: 16.0.w),
                backgroundColor: PrimaryColors.primary,
                radius: 3.r,
                onTap: () {
                  context.push('/signup');
                },
                child: Center(
                  child: Text(
                    'Get Started',
                    style: CustomTextStyles(context).body1Poppins_16x5.copyWith(
                          color: PrimaryColors.white,
                        ),
                  ),
                ),
              ),
              34.verticalSpace,
              GestureDetector(
                onTap: () {
                  context.push('/signin');
                },
                child: RichText(
                    text: TextSpan(
                        text: '''Already have an account? ''',
                        style: CustomTextStyles(context)
                            .body1Poppins_16x6
                            .copyWith(color: ThemeHelper(context).tertiary),
                        children: [
                          TextSpan(
                            text: 'Sign in',
                            style: CustomTextStyles(context)
                                .body1Poppins_16x6
                                .copyWith(
                                  color: ThemeHelper(context).tertiary,
                                  decoration: TextDecoration.underline,
                                  decorationColor:
                                      ThemeHelper(context).tertiary,
                                ),
                          )
                        ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
