import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/majesticons.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

import '../../custom_widgets/app_layout.dart';
import '../../custom_widgets/blue_gradient_container.dart';
import '../../custom_widgets/containers/red_gradient_container.dart';
import '../../custom_widgets/green_gradient_container.dart';
import '../../custom_widgets/settings_nav.dart';

class ReferScreen extends StatelessWidget {
  const ReferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      appBar: AppBar(),
      body: Column(children: [
        Image.asset(
          "assets/images/gift.png",
          width: MediaQuery.of(context).size.width * 0.6,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            "Refer Your Friend and win 50Naira",
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        GreenGradientContainer(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              "My Referrals",
              style:
                  Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 18),
            ),
          ),
        ),
        const SizedBox(height: 30),
        RedGradientContainer(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              "Send Invite",
              style:
                  Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 18),
            ),
          ),
        ),
      ]),
    );
  }
}
