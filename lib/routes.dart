import 'package:flutter/material.dart';

import 'pages/dashboard/dashboard.dart';
import 'pages/splash/splash_screen_page.dart';

class AppRoutes {
  static const splash = '/splash';
  static const dashboard = '/default-home';

  static get(BuildContext context) => {
        dashboard: (context) => const DashboardPage(),
        splash: (context) => const SplashScreenPage(),
      };
}
