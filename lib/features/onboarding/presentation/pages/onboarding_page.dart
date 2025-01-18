import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          OnboardingOptions(color: Colors.red),
          OnboardingOptions(color: Colors.yellow),
          OnboardingOptions(color: Colors.green),
        ],
      ),
    );
  }
}

class OnboardingOptions extends StatelessWidget {
  final Color color;
  const OnboardingOptions({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color),
      child: Text("Hello"),
    );
  }
}
