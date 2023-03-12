import 'dart:ui';

import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  const AppLayout(
      {super.key,
      this.appBar,
      this.body,
      this.padding = const EdgeInsets.all(20)});
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Image.asset(
          'assets/images/app-bg.png',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        // Black semi-transparent overlay
        Container(
          color: Colors.black.withOpacity(0.8),
          height: double.infinity,
          width: double.infinity,
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: appBar,
            body: SafeArea(
              child: Padding(
                padding: padding,
                child: body ?? const SizedBox(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
