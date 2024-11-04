import 'package:brillo_sportz/core/theme/theme_helper/theme_helper.dart';
import 'package:brillo_sportz/core/theme/widgets/bottomBar/bottomBar.dart';
import 'package:brillo_sportz/core/theme/widgets/custom_container/custom_container.dart';
import 'package:brillo_sportz/core/theme/widgets/custom_text_style/custom_text_style.dart';
import 'package:brillo_sportz/features/dashboard/pages/home.screen.dart';
import 'package:brillo_sportz/features/interests/domain/models/interest.model.dart';
import 'package:brillo_sportz/features/Auth/sign%20up/presentation/providers/signUpStateProvider.dart';
import 'package:brillo_sportz/features/dashboard/pages/buddies.screen.dart';
import 'package:brillo_sportz/features/dashboard/pages/discover.screen.dart';
import 'package:brillo_sportz/features/dashboard/pages/settings.screen.dart';
import 'package:brillo_sportz/features/dashboard/providers/provider.dart';
import 'package:brillo_sportz/features/interests/provider/pickedInterestStateNotifier.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottonIndex = ref.watch(bottomBarIndexProvider);
    PageController _pageController = PageController();

    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          ref.watch(bottomBarIndexProvider.notifier).state = index;
        },
        children: [
          HomeScreen(),
          BuddiesScreen(),
          DiscoverScreen(),
          SettingsScreen(),
        ],
      ),
      bottomNavigationBar: BottomBar(_pageController),
    );
  }
}
