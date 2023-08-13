import 'package:fip/core/widgets/component/navigation.dart';
import 'package:fip/core/widgets/custom_text_button.dart';
import 'package:fip/feature/auth/features/view/login_screen.dart';
import 'package:fip/feature/on_boarding/presentation/views/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions:  [
          CustomTextButton(
            onPressed:() =>  navigateAndFinish(context, const LoginScreen()),
            text: 'Skip',
          ),
        ],
      ),
      body: const OnBoardingViewBody(),
    );
  }
}




