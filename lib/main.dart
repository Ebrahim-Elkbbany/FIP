import 'package:fip/feature/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FIP());
}

class FIP extends StatelessWidget {
  const FIP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnBoardingView(),
    );
  }
}
