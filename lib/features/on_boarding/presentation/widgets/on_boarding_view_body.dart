import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/on_boarding/data/models/on_boarding_model.dart';
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
      itemCount: onBoardingData.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            SvgPicture.asset(
              onBoardingData[index].imagePath,
              width: 340,
              height: 290,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 24),
            CustomSmoothPageIndicator(pageController: pageController),
            const SizedBox(height: 50),
            Text(
              onBoardingData[index].title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppTextStyles.poppins500Style26,
            ),
            const SizedBox(height: 24),
            Text(
              onBoardingData[index].subTitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppTextStyles.poppins400Style16,
            ),
          ],
        );
      },
    );
  }
}
