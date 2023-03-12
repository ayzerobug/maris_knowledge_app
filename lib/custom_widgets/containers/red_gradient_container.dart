import 'package:flutter/material.dart';

class RedGradientContainer extends StatelessWidget {
  const RedGradientContainer({
    super.key,
    required this.child,
    required this.onTap,
    this.stretch = true,
    this.padding = const EdgeInsets.all(12),
  });
  final Widget child;
  final void Function() onTap;
  final bool stretch;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [
              Color(0xffFB4949),
              Color(0xff6B0000),
              Color(0xff850404),
              Color(0xffEE1010),
            ],
            stops: [
              0.0,
              0.33,
              0.66,
              1.0,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: stretch
            ? Center(
                child: child,
              )
            : child,
      ),
    );
  }
}
