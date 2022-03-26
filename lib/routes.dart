import 'package:flutter/material.dart';

import 'pages/dashboard/dashboard.dart';
import 'pages/identity/identity_page.dart';
import 'pages/onboarding/screen/screen_one.dart';
import 'pages/splash/splash_screen_page.dart';

class AppRoutes {
  static const onboard = '/onboard';
  static const splash = '/splash';
  static const dashboard = '/default-home';
  static const identity = '/identity';

  static get(BuildContext context) => {
        splash: (context) => const SplashScreenPage(),
        onboard: (context) => const OnboardingScreenOne(),
        identity: (context) => const IdentityPage(),
        dashboard: (context) => const DashboardPage(),
      };
}
