import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/ri.dart';

import '../../custom_widgets/app_layout.dart';
import '../../custom_widgets/blue_gradient_container.dart';
import '../../custom_widgets/green_gradient_container.dart';
import '../../custom_widgets/level_stat.dart';
import '../../misc/constants.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const LevelStat(),
            SizedBox(
              height: 400,
              child: Center(
                child: Image.asset(AppConstants.logoPath),
              ),
            ),
            GreenGradientContainer(
              onTap: () {},
              stretch: false,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 50,
                child: Center(
                  child: Text(
                    "PLAY",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BlueGradientContainer(
                  onTap: () {},
                  padding: const EdgeInsets.all(10),
                  child: const Iconify(
                    Carbon.settings,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                BlueGradientContainer(
                  onTap: () {},
                  padding: const EdgeInsets.all(10),
                  child: const Iconify(
                    Ri.stack_line,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                BlueGradientContainer(
                  onTap: () {},
                  padding: const EdgeInsets.all(10),
                  child: const Iconify(
                    MaterialSymbols.text_snippet_outline_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                BlueGradientContainer(
                  onTap: () {},
                  padding: const EdgeInsets.all(10),
                  child: const Iconify(
                    Bi.person,
                    color: Colors.white,
                    size: 40,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
