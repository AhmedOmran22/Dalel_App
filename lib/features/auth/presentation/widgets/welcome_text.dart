import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';
class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.poppins600Style28,
      textAlign: TextAlign.center,
    );
  }
}
