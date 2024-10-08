import 'package:dalel/core/routes/routes_name.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/cache/casch_helper.dart';

class GetButton extends StatelessWidget {
  const GetButton(
      {super.key, required this.currentIndex, required this.pageController});
  final int currentIndex;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return CustomButton(
        text: 'Create Account',
        onPressed: () {
          getIt
              .get<CacheHelper>()
              .saveData(key: 'IsOnBoardingVisited', value: true);

          GoRouter.of(context).pushReplacement(RoutesName.signUp);
        },
      );
    } else {
      return CustomButton(
        text: AppStrings.next,
        onPressed: () {
          pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          );
        },
      );
    }
  }
}
