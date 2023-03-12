import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:maris_knowledge_app/custom_widgets/blue_gradient_container.dart';

class SettingsNav extends StatelessWidget {
  const SettingsNav({super.key, required this.text, this.screen});
  final String text;
  final Widget? screen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: BlueGradientContainer(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontSize: 20),
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
