import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/on_boarding/presentation/widgets/custom_smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  final PageController pageController = PageController();
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            SvgPicture.asset(AppAssets.assetsSvgsOnBoarding1),
            const SizedBox(height: 24),
            CustomSmoothPageIndicator(pageController: pageController),
            const SizedBox(height: 50),
            const Text(
              textAlign: TextAlign.center,
              AppStrings.onBoardingTitleOne,
              style: AppTextStyles.poppins500Style26,
            ),
            const SizedBox(height: 24),
            const Text(
              textAlign: TextAlign.center,
              AppStrings.onBoardingSubtitleOne,
              style: AppTextStyles.poppins400Style16,
            ),
          ],
        );
      },
    );
  }
}
