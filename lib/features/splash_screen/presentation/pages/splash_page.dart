import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:spotify_clone/features/splash_screen/presentation/widgets/splash_logo.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Animate(
          effects: [
            ScaleEffect(
              begin: Offset(1, 1),
              end: Offset(15, 15),
              delay: 1250.ms,
              duration: 750.ms,
              curve: Curves.easeIn,
            ),
          ],
          child: SplashLogo(),
        ),
      ),
    );
  }
}
