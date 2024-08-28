import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/on_boarding_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 40),
              SkipText(),
              SizedBox(height: 32),
              Expanded(child: OnBoardingViewBody()),
              SizedBox(height: 88),
              CustomButton(text: AppStrings.next),
              SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}

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
