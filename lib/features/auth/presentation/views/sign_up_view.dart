import 'package:dalel/core/routes/routes_name.dart';
import 'package:dalel/features/auth/presentation/widgets/have_an_account.dart';
import 'package:dalel/features/auth/presentation/widgets/sign_up_form.dart';
import 'package:dalel/features/auth/presentation/widgets/welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_strings.dart';

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
              const SliverToBoxAdapter(child: SignUpForm()),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverToBoxAdapter(
                child: HaveAnAccount(
                  text1: AppStrings.dontHaveAnAccount,
                  text2: AppStrings.signIn,
                  onTap: () {
                    GoRouter.of(context).push(RoutesName.signIn);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
