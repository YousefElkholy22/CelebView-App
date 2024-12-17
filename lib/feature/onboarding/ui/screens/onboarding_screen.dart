import 'package:final_project/core/theming/colors.dart';
import 'package:final_project/feature/onboarding/data/repo/onboarding_item.dart';
import 'package:final_project/feature/onboarding/ui/widgets/onboarding_button.dart';
import 'package:final_project/feature/home/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  OnBoardingScreenState createState() => OnBoardingScreenState();
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  bool _isLastPage = false;

  void _updateIsLastPage(int currentPage, int totalPages) {
    setState(() {
      _isLastPage = currentPage == totalPages - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final onboardingItems = OnboardingItem();
    final items = onboardingItems.getItem(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    onPageChanged: (value) => _updateIsLastPage(value, items.length),
                    itemCount: items.length,
                    controller: _pageController,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(item.image, height: 300,width: 500,),
                            const SizedBox(height: 20),
                            Text(
                              item.title,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: items.length,
                    effect: const SwapEffect(
                      activeDotColor: darkBlue,
                      dotColor:lightBlue,
                      dotHeight: 12.0,
                      dotWidth: 12.0,
                      spacing: 8.0,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: _buildNextButton(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNextButton(BuildContext context) {
    return _isLastPage
        ? OnBoardingeButton(
            titl: 'Get Started',
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
          )
        : OnBoardingeButton(
            onPressed: () => _pageController.nextPage(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeIn,
            ),
            titl: 'Next',
          );
  }
}
