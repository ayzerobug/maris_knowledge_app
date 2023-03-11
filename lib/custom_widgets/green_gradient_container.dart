import 'package:flutter/material.dart';

class GreenGradientContainer extends StatelessWidget {
  const GreenGradientContainer({super.key, required this.child, this.onTap});
  final Widget child;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [
              Color(0xff49FB5B),
              Color(0xff006B0B),
              Color(0xff048511),
              Color(0xff10EE27),
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
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
