import 'package:fip/core/widgets/custom_text_button.dart';
import 'package:fip/feature/on_boarding/presentation/views/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: const [
          CustomTextButton(
            text: 'Skip',
          ),
        ],
      ),
      body: const OnBoardingViewBody(),
    );
  }
}




