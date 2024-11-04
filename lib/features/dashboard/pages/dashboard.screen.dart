import 'package:brillo_sportz/core/theme/widgets/bottomBar/bottomBar.dart';
import 'package:brillo_sportz/features/dashboard/pages/home.screen.dart';
import 'package:brillo_sportz/features/dashboard/pages/buddies.screen.dart';
import 'package:brillo_sportz/features/dashboard/pages/discover.screen.dart';
import 'package:brillo_sportz/features/dashboard/pages/settings.screen.dart';
import 'package:brillo_sportz/features/dashboard/providers/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
