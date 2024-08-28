import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_strings.dart';

class OnBoardingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnBoardingModel({
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    imagePath: AppAssets.assetsSvgsOnBoarding1,
    title: AppStrings.onBoardingTitleOne,
    subTitle: AppStrings.onBoardingSubtitleOne,
  ),
  OnBoardingModel(
    imagePath: AppAssets.assetsSvgsOnBoarding2,
    title: AppStrings.onBoardingTitleTow,
    subTitle: AppStrings.onBoardingSubtitleTow,
  ),
  OnBoardingModel(
    imagePath: AppAssets.assetsSvgsOnBoarding3,
    title: AppStrings.onBoardingTitleThree,
    subTitle: AppStrings.onBoardingSubtitleThree,
  ),
];
