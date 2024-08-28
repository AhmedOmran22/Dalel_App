import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backGroundColor,
    required this.text,
    this.onPressed,
  });

  final Color? backGroundColor;
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: backGroundColor ?? AppColors.primaryColor,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTextStyles.poppins500Style18,
        ),
      ),
    );
  }
}
