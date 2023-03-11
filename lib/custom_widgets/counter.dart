import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';

class Counter extends StatelessWidget {
  const Counter(
      {super.key,
      required this.iconData,
      required this.value,
      required this.color,
      this.onTap});
  final String iconData;
  final String value;
  final Color color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 100.00,
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff212120),
              Color.fromARGB(208, 120, 120, 120),
              Color(0xff0C0C0C),
            ],
            stops: [0.13, 0.55, 1.0],
          ),
          border: Border.all(color: const Color(0xffFFC806), width: 2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Iconify(iconData, size: 20, color: color),
            Text(
              value,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const InkWell(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Color(0xff1DA711),
                  shape: BoxShape.circle,
                ),
                child: Iconify(
                  Ic.baseline_add,
                  size: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
