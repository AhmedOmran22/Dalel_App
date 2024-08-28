import 'package:dalel/core/routes/routes_name.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/on_boarding_view_body.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/skip_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 40),
              Opacity(
                opacity: currentIndex == onBoardingData.length - 1 ? 0 : 1,
                child: const SkipText(),
              ),
              const SizedBox(height: 32),
              Expanded(
                child: OnBoardingViewBody(
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  pageController: pageController,
                ),
              ),
              const SizedBox(height: 88),
              currentIndex == onBoardingData.length - 1
                  ? CustomButton(
                      text: 'Create Account',
                      onPressed: () {
                        GoRouter.of(context).push(RoutesName.signUp);
                      },
                    )
                  : CustomButton(
                      text: AppStrings.next,
                      onPressed: () {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.bounceIn,
                        );
                      },
                    ),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
