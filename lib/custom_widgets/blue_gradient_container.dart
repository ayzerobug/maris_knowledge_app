import 'package:flutter/material.dart';

class BlueGradientContainer extends StatelessWidget {
  const BlueGradientContainer({
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
              Color(0xff07C4FF),
              Color(0xff1D5BB9),
              Color(0xff043784),
              Color(0xff00CFFD),
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
