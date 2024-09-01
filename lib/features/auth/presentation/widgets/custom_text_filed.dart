import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.labelText, this.obscureText});
  final String labelText;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: TextFormField(
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: AppTextStyles.poppins400Style16,
          border: getBorederStyle(),
          enabledBorder: getBorederStyle(),
          focusedBorder: getBorederStyle(),
        ),
      ),
    );
  }

  OutlineInputBorder getBorederStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: AppColors.lightGrey,
      ),
    );
  }
}
