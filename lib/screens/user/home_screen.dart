import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/akar_icons.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/fe.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:iconify_flutter/icons/tabler.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:transparent_route/transparent_route.dart';

import '../../custom_widgets/app_bg.dart';
import '../../custom_widgets/app_layout.dart';
import '../../custom_widgets/green_gradient_container.dart';
import '../../custom_widgets/home_carousel_item.dart';
import '../../custom_widgets/home_greeetings.dart';
import '../../custom_widgets/level_stat.dart';
import '../../custom_widgets/drawer_nav.dart';
import '../../misc/constants.dart';
import 'leaderboard.dart';
import 'payout_history_screen.dart';
import 'play_screen.dart';
import 'quiz_start_screen.dart';
import 'refer_screen.dart';
import 'settings_screen.dart';
import 'withdraw_funds_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return AppLayout(
      scaffoldKey: scaffoldKey,
      appBar: AppBar(
        leading: Transform.scale(
          scale: 0.5,
          child: InkWell(
              onTap: () {
                scaffoldKey.currentState!.openDrawer();
              },
              child: const Iconify(Tabler.menu_2, color: Colors.white)),
        ),
        title: const Text(AppConstants.appName),
      ),
      drawer: AppBg(
          child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage("assets/images/avatar.png"),
                        ),
                        border: Border.all(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Richard Daniel",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontSize: 20),
                        ),
                        Text("application@gmail.com",
                            style: Theme.of(context).textTheme.bodySmall),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                DrawerNav(
                  onTap: () => replaceScreen(context, const HomeScreen()),
                  iconData: Bi.pie_chart,
                  text: "Dashboard",
                ),
                DrawerNav(
                  onTap: () => pushScreen(context, const ReferScreen()),
                  iconData: AkarIcons.people_group,
                  text: "Referrals",
                ),
                DrawerNav(
                  onTap: () => pushScreen(context, const PlayScreen()),
                  iconData: Carbon.skill_level,
                  text: "Game Levels",
                ),
                DrawerNav(
                  onTap: () => pushScreen(context, const LeaderBoard()),
                  iconData: Ri.stack_line,
                  text: "Leaderboard",
                ),
                DrawerNav(
                  onTap: () => pushScreen(context, PayoutHistoryScreen()),
                  iconData: MaterialSymbols.list_alt_outline,
                  text: "Billing History",
                ),
                DrawerNav(
                  onTap: () => pushScreen(context, PayoutHistoryScreen()),
                  iconData: Ic.outline_file_upload,
                  text: "Withdrawal History",
                ),
                DrawerNav(
                  onTap: () => pushScreen(context, const WithdrawFundScreen()),
                  iconData: Uil.book_alt,
                  text: "Withdraw Funds",
                ),
                DrawerNav(
                  onTap: () => pushScreen(context, const SettingsScreen()),
                  iconData: Carbon.settings,
                  text: "Settings",
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Iconify(
                        Fe.logout,
                        color: Colors.white,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Logout",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 20),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
      body: Column(
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
          InkWell(
            onTap: () => pushScreen(context, const QuizStartScreen()),
            child: Container(
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Image.asset(
                      "assets/images/gold-cup-with-star.png",
                      width: 100,
                    ),
                  ),
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
          ),
          const SizedBox(
            height: 20,
          ),
          GreenGradientContainer(
            onTap: () => pushScreen(context, const ReferScreen()),
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
    );
  }
}
