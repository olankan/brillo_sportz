import 'package:brillo_sportz/features/interests/presentation/pages/interests.screen.dart';
import 'package:brillo_sportz/features/Auth/sign%20in/presentation/pages/forgot_password.dart';
import 'package:brillo_sportz/features/Auth/sign%20up/presentation/pages/signup.screen.dart';
import 'package:brillo_sportz/features/Onboarding/presentation/pages/onboarding.dart';
import 'package:brillo_sportz/features/Splash_Screen/splashScreen.screen.dart';
import 'package:brillo_sportz/features/dashboard/pages/dashboard.screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/Auth/sign in/presentation/pages/signin.screen.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          //  TodoScreen(),
          SplashScreen(),
      routes: <RouteBase>[
        GoRoute(
          path: 'signUp',
          builder: (BuildContext context, GoRouterState state) =>
              const SignupScreen(),
        ),
        GoRoute(
          path: 'signIn',
          builder: (BuildContext context, GoRouterState state) =>
              const SigninScreen(),
        ),
        GoRoute(
          path: 'onboarding',
          builder: (BuildContext context, GoRouterState state) =>
              MainOnboardingScreen(),
        ),
        GoRoute(
          path: 'dashboard',
          builder: (BuildContext context, GoRouterState state) =>
              DashboardScreen(),
        ),
        GoRoute(
          path: 'interests',
          builder: (BuildContext context, GoRouterState state) =>
              InterestScreen(),
        ),
        GoRoute(
          path: 'forgot',
          builder: (BuildContext context, GoRouterState state) =>
              ForgotPassword(),
        ),
      ],
    ),
  ],
);
