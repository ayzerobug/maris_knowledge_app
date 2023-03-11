import 'package:flutter/material.dart';
import 'package:maris_knowledge_app/misc/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff0A004A), Color(0xff110027)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SizedBox(
            height: 500,
            child: Center(
              child: Image.asset(AppConstants.logoPath),
            ),
          ),
        ),
      ),
    );
  }
}
