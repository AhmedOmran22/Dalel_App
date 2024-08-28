import 'package:dalel/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/get_button.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/on_boarding_view_body.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/skip_text.dart';
import 'package:flutter/material.dart';

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
              GetButton(
                  currentIndex: currentIndex, pageController: pageController),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
