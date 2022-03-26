import 'package:flutter/material.dart';

import 'flavors.dart';
import 'routes.dart';
import 'theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,

      title: AppFlavor.title,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      // home: AppFlavourExtensions.flavorBanner(
      //   child: MyHomePage(title: AppFlavor.title),
      //   show: kDebugMode,
      // ),
      routes: AppRoutes.get(context),

      initialRoute: AppRoutes.splash,
    );
  }
}
