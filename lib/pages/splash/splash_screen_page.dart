import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../core/constant.dart';
import '../../flavors.dart';
import '../../routes.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();

    // final page = isFirstTime
    //     ? AppRoutes.onboard
    //     : user != null
    //         ? AppRoutes.dashboard
    //         : AppRoutes.identity;

    Timer(
      const Duration(milliseconds: 500),
      () => Navigator.of(context)
          .pushNamedAndRemoveUntil(AppRoutes.onboard, (route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppFlavourExtensions.flavorBanner(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(image: AssetImage(AppAssetsImages.logoWithName)),
            ],
          ),
        ),
      ),
      show: kDebugMode,
    );
  }
}
