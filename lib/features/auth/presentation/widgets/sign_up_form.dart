import 'package:dalel/features/auth/presentation/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';
import 'terms_and_coditions.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const CustomTextFormField(labelText: AppStrings.fristName),
          const CustomTextFormField(labelText: AppStrings.lastName),
          const CustomTextFormField(labelText: AppStrings.emailAddress),
          const CustomTextFormField(
            labelText: AppStrings.password,
            obscureText: true,
          ),
          const TermsAndConditions(),
          const SizedBox(height: 88),
          CustomButton(
            text: AppStrings.signUp,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
// awa5r el Episode 16 m3 dalel app 