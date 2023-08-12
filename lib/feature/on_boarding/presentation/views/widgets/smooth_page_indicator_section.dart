import 'package:fip/constants.dart';
import 'package:fip/core/widgets/component/navigation.dart';
import 'package:fip/feature/auth/features/view/login_screen.dart';
import 'package:fip/feature/on_boarding/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothPageIndicatorSection extends StatelessWidget {
  const SmoothPageIndicatorSection(
      {Key? key, required this.pageController, required this.isLast})
      : super(key: key);
  final PageController pageController;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SmoothPageIndicator(
          controller: pageController,
          count: OnBoardingModel.boarding.length,
          effect: const ExpandingDotsEffect(
            dotColor: Colors.grey,
            dotHeight: 6,
            dotWidth: 10,
            spacing: 6,
            activeDotColor: kPrimaryColor,
          ),
        ),
        const Spacer(),
        FloatingActionButton(
          elevation: 0,
          onPressed: () {
            if (isLast) {
              navigateTo(context,const LoginScreen());
            } else {
              pageController.nextPage(
                duration: const Duration(
                  milliseconds: 700,
                ),
                curve: Curves.fastLinearToSlowEaseIn,
              );
            }
          },
          child: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
        )
      ],
    );
  }
}
