import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/fe.dart';
import 'package:iconify_flutter/icons/heroicons.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/icon_park_solid.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/majesticons.dart';
import 'package:iconify_flutter/icons/tabler.dart';
import 'package:maris_knowledge_app/misc/constants.dart';

import '../../custom_widgets/app_layout.dart';
import '../../custom_widgets/counter.dart';
import '../../custom_widgets/green_gradient_container.dart';
import '../../custom_widgets/home_carousel_item.dart';
import '../../custom_widgets/home_greeetings.dart';
import '../../custom_widgets/level_stat.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
      appBar: AppBar(
        leading: Transform.scale(
          scale: 0.5,
          child: const Iconify(Tabler.menu_2, color: Colors.white),
        ),
        title: const Text(AppConstants.appName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeGreetings("RICHARD DANIEL ANTHONY"),
            const SizedBox(
              height: 20,
            ),
            const LevelStat(),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HomeCarouselItem(
                    topLeft: const Text("Plan"),
                    topRight: const Text("Basic"),
                    value: "2.14",
                    currency: "Maris",
                    bottomLeft: const Iconify(
                      Fe.i_sync,
                      color: Colors.white,
                    ),
                    bottomRight: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Text("Upgrade to Premium"),
                    ),
                  ),
                  HomeCarouselItem(
                    topLeft: const Text("Account Balance"),
                    topRight: const Iconify(
                      Fe.i_sync,
                      color: Colors.white,
                    ),
                    value: "0",
                    currency: "NGN",
                    bottomLeft: const Text("Buy Game Savers"),
                    bottomRight: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text("Top Up"),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 170,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xff7B0808),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Level 2",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontSize: 18)),
                  Image.asset("assets/images/gold-cup-with-star.png"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Iconify(
                        Ic.twotone_arrow_forward,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Continue Game",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 18),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GreenGradientContainer(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    const Iconify(
                      Ion.md_share,
                      color: Colors.white,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        "Invite Your Friends to Maris app and get other advantages.",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
