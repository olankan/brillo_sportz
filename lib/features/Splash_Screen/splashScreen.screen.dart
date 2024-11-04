import 'package:brillo_sportz/core/theme/theme_helper/theme_helper.dart';
import 'package:brillo_sportz/core/theme/widgets/custom_text_style/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<String?> getTokenPref() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('email');

      if (token != null) {
        return token;
      }
    } catch (e) {
      print('Error getting email: $e');
      return null;
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    // Set color after a delay
    Future.delayed(const Duration(milliseconds: 2), () {});

    // Perform navigation logic after a delay
    Future.delayed(const Duration(seconds: 3), () async {
      final token = await getTokenPref();
      final goRouter = GoRouter.of(context);
      if (token == null || token.isEmpty) {
        goRouter.go('/onboarding');
      } else {
        goRouter.go('/dashboard');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: ThemeHelper(context).secondary,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/svgs/brillo.png',
            height: 60.h,
          ),
          Center(
              child: Text(
            'BrilloSportz',
            style: CustomTextStyles(context).boldH5Poppins_24x7,
          ))
        ]).animate().fadeIn(duration: Duration(seconds: 1)),
      ),
    );
  }
}
