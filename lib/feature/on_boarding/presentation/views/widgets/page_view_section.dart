import 'package:fip/feature/on_boarding/presentation/data/models/on_boarding_model.dart';
import 'package:fip/feature/on_boarding/presentation/views/widgets/on_boarding_item.dart';
import 'package:flutter/material.dart';

class PageViewSection extends StatelessWidget {
  const PageViewSection({
    super.key,
    required this.pageController,
    required this.onPageChanged,
  });

  final void Function(int)? onPageChanged;
  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        onPageChanged: onPageChanged,
        controller: pageController,
        physics: const BouncingScrollPhysics(),
        itemCount: OnBoardingModel.boarding.length,
        itemBuilder: (context, index) {
          return OnBoardingItem(
            boardingItem: OnBoardingModel.boarding[index],
          );
        },
      ),
    );
  }
}