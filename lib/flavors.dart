import 'package:flutter/material.dart';

enum Flavor {
  prd,
  sit,
  uat,
}

extension FlavorName on Flavor {
  String get name => toString().split('.').last;
}

class AppFlavor {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.prd:
        return 'inStride Health';
      case Flavor.sit:
        return 'inStride Health SIT';
      case Flavor.uat:
        return 'inStride Health UAT';
      default:
        return 'title';
    }
  }
}

extension AppFlavourExtensions on AppFlavor {
  static Widget flavorBanner({
    required Widget child,
    bool show = true,
  }) =>
      show
          ? Banner(
              child: child,
              location: BannerLocation.topStart,
              message: AppFlavor.name,
              color: flavorBannerColor.withOpacity(0.6),
              textStyle: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12.0,
                letterSpacing: 1.0,
              ),
              textDirection: TextDirection.ltr,
            )
          : Container(child: child);

  static MaterialColor get flavorBannerColor {
    switch (AppFlavor.appFlavor) {
      case Flavor.prd:
        return Colors.green;
      case Flavor.sit:
        return Colors.red;
      case Flavor.uat:
        return Colors.orange;
      default:
        return Colors.green;
    }
  }
}
