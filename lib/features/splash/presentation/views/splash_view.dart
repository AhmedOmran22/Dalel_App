import 'package:dalel/core/cache/casch_helper.dart';
import 'package:dalel/core/routes/routes_name.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isOnBoardingVisited =
        getIt.get<CacheHelper>().getData(key: 'IsOnBoardingVisited') ?? false;
    isOnBoardingVisited
        ? navigationToSignUPView()
        : navigationToOnBoardingScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          textAlign: TextAlign.center,
          AppStrings.appName,
          style: AppTextStyles.pacifico400Style64,
        ),
      ),
    );
  }

  Future<void> navigationToOnBoardingScreen() {
    return Future.delayed(
      const Duration(seconds: 2),
      () {
        GoRouter.of(context).pushReplacement(RoutesName.onBoarding);
      },
    );
  }

  Future<void> navigationToSignUPView() {
    return Future.delayed(
      const Duration(seconds: 2),
      () {
        GoRouter.of(context).pushReplacement(RoutesName.signUp);
      },
    );
  }
}
