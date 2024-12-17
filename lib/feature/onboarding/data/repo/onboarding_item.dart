import 'package:final_project/feature/onboarding/data/models/onboarding_info.dart';
import 'package:flutter/material.dart';

class OnboardingItem {
  List<OnboardingInfo> getItem(BuildContext context) {
    return [
      OnboardingInfo(
        title: 'Welcome!',
         image: 'assets/images/onboard_one.jpg',
          ),
      OnboardingInfo(
        title: 'Find Your Favorite Person!',
         image: 'assets/images/onboaedingOne.jpg',
          ),
      OnboardingInfo(
        title: 'Follow Their News First Hand!',
         image: 'assets/images/fashion.jpg',
          )
      ];
  }
}
