import 'package:flutter/material.dart';
import 'package:onboarding_screen/core/cutom_button_widget.dart';
import 'package:onboarding_screen/core/pallet.dart';
import 'package:onboarding_screen/feture/custom_page_view.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: SecondaryColor,
      body: Stack(
        children: [
          CustomPageView(
            height: height,
            width: width,
          ),
          Positioned(
            top: height * 0.1,
            right: 32,
            child: Text(
              'Skip',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: height * 0.1,
            left: width * 0.15,
            right: width * 0.15,
            child: CustomButtonWidget(
              height: height,
              width: width,
              text: 'Next',
            ),
          )
        ],
      ),
    );
  }
}
