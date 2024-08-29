import 'package:dalel/core/cache/casch_helper.dart';
import 'package:dalel/core/routes/routes_name.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';

class SkipText extends StatelessWidget {
  const SkipText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getIt.get<CacheHelper>().saveData(key: 'IsOnBoardingVisited', value: true);
        GoRouter.of(context).pushReplacement(RoutesName.signUp);
      },
      child: Text(
        AppStrings.skip,
        style: AppTextStyles.poppins500Style18.copyWith(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}
