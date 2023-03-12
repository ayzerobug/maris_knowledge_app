import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';

import 'blue_gradient_container.dart';

class DrawerNav extends StatelessWidget {
  const DrawerNav({super.key, required this.iconData, required this.text});
  final String iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: BlueGradientContainer(
        onTap: () {},
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Iconify(
                  iconData,
                  color: Colors.white,
                  size: 24,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 18),
                )
              ],
            ),
            const Iconify(
              Ic.outline_chevron_right,
              color: Colors.white,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
