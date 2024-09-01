import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({
    super.key,
    required this.text1,
    required this.text2,
    this.onTap,
  });
  final String text1, text2;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: AppTextStyles.poppins400Style12,
          ),
          GestureDetector(
            onTap: onTap,
            child: Text(
              text2,
              style: AppTextStyles.poppins400Style12
                  .copyWith(color: AppColors.deepGrey),
            ),
          ),
        ],
      ),
    );
  }
}
