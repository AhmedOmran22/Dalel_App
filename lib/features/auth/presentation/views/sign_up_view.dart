import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_filed.dart';
import 'package:dalel/features/auth/presentation/widgets/terms_and_coditions.dart';
import 'package:dalel/features/auth/presentation/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: SizedBox(height: 100)),
              const SliverToBoxAdapter(
                  child: WelcomeText(text: AppStrings.welcome)),
              const SliverToBoxAdapter(child: SizedBox(height: 40)),
              const SliverToBoxAdapter(
                  child: CustomTextField(labelText: AppStrings.fristName)),
              const SliverToBoxAdapter(
                  child: CustomTextField(labelText: AppStrings.lastName)),
              const SliverToBoxAdapter(
                child: CustomTextField(
                  labelText: AppStrings.emailAddress,
                ),
              ),
              const SliverToBoxAdapter(
                  child: CustomTextField(
                labelText: AppStrings.password,
                obscureText: true,
              )),
              const SliverToBoxAdapter(child: TermsAndConditions()),
              const SliverToBoxAdapter(child: SizedBox(height: 88)),
              SliverToBoxAdapter(
                child: CustomButton(
                  text: AppStrings.signUp,
                  onPressed: () {},
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),
              const SliverToBoxAdapter(
                child: HaveAnAccount(
                  text1: AppStrings.dontHaveAnAccount,
                  text2: AppStrings.signIn,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

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
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: text1,
              style: AppTextStyles.poppins400Style12,
            ),
            TextSpan(
              text: text2,
              style: AppTextStyles.poppins400Style12
                  .copyWith(color: AppColors.deepGrey),
            ),
          ],
        ),
      ),
    );
  }
}
