import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:spotify_clone/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:spotify_clone/features/splash_screen/presentation/widgets/splash_logo.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Animate(
          onComplete: (controller) => redirect(),
          effects: [
            ScaleEffect(
              end: Offset(12.5, 12.5),
              delay: 1500.ms,
              duration: 750.ms,
              curve: Curves.easeIn,
            ),
            FadeEffect(delay: 1750.ms, duration: 500.ms, begin: 1.0, end: 0.0),
          ],
          child: SplashLogo(),
        ),
      ),
    );
  }

  Future<void> redirect() async {
    await Future.delayed(Duration(milliseconds: 500));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (BuildContext contwxt) => OnboardingPage()),
    );
  }
}
