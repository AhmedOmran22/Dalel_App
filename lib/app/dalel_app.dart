import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DalelApp extends StatelessWidget {
  const DalelApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.offWhite,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
