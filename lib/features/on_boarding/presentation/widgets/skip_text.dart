import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';
class SkipText extends StatelessWidget {
  const SkipText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.skip,
      style: AppTextStyles.poppins500Style18.copyWith(
        color: Colors.black,
        fontSize: 16,
      ),
    );
  }
}
