import 'package:brillo_sportz/core/theme/theme_helper/theme_helper.dart';
import 'package:brillo_sportz/core/theme/widgets/custom_text_style/custom_text_style.dart';
import 'package:brillo_sportz/features/dashboard/providers/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomBar extends ConsumerWidget {
  const BottomBar(
    this._controller, {
    super.key,
  });

  final PageController _controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottonIndex = ref.watch(bottomBarIndexProvider);

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xffDCDFE3),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: SalomonBottomBar(

          // itemShape: ShapeBorder.lerp(Radius.circular(7), b, t),
          currentIndex: bottonIndex,
          onTap: (index) {
            ref.watch(bottomBarIndexProvider.notifier).state = index;
            _controller.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
          backgroundColor: ThemeHelper(context).secondary,
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(
                Icons.home,
                color: bottonIndex == 0
                    ? PrimaryColors.primary
                    : Color(0xffADA4A5),
              ),
              title: Text(
                "Home",
                style: CustomTextStyles(context).body1Poppins_12x5.copyWith(
                      color: PrimaryColors.black,
                    ),
              ),
              selectedColor: Color(0xff0C81E4).withOpacity(0.1),
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(
                Icons.people_alt_outlined,
                size: 27.r,
                color: bottonIndex == 1
                    ? PrimaryColors.primary
                    : Color(0xffADA4A5),
              ),
              title: Text(
                "Buddies",
                style: CustomTextStyles(context).body1Poppins_12x4.copyWith(
                      color: PrimaryColors.black,
                    ),
              ),
              selectedColor: Color(0xff0C81E4).withOpacity(0.1),
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(
                Icons.explore_outlined,
                color: bottonIndex == 2
                    ? PrimaryColors.primary
                    : Color(0xffADA4A5),
              ),
              title: Text(
                "Discover",
                style: CustomTextStyles(context).body1Poppins_12x4.copyWith(
                      color: PrimaryColors.black,
                    ),
              ),
              selectedColor: Color(0xff0C81E4).withOpacity(0.1),
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(
                Icons.settings,
                color: bottonIndex == 3
                    ? PrimaryColors.primary
                    : Color(0xffADA4A5),
              ),
              title: Text(
                "Settings",
                style: CustomTextStyles(context).body1Poppins_12x4.copyWith(
                      color: PrimaryColors.black,
                    ),
              ),
              selectedColor: Color(0xff0C81E4).withOpacity(0.1),
            ),
          ]),
    );
  }
}
