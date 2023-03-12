import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/majesticons.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

import '../../custom_widgets/app_layout.dart';
import '../../custom_widgets/blue_gradient_container.dart';
import '../../custom_widgets/settings_nav.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      appBar: AppBar(title: const Center(child: Text("Leaderboard"))),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(children: [
          Image.asset(
            "assets/images/gold-cup-with-star.png",
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          const SizedBox(height: 20),
          Text(
            "ADEBIYI ABOSEDE",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: BlueGradientContainer(
              onTap: () {},
              child: Text(
                "ADEBIYI ABOSEDE",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: BlueGradientContainer(
              onTap: () {},
              child: Text(
                "NURUDEEN AJAO",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontSize: 20),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
