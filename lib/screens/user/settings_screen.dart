import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/majesticons.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

import '../../custom_widgets/app_layout.dart';
import '../../custom_widgets/blue_gradient_container.dart';
import '../../custom_widgets/settings_nav.dart';
import 'settings/bank_withdrawal_settings.dart';
import 'settings/profile_settings_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      appBar: AppBar(title: const Center(child: Text("Settings"))),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  BlueGradientContainer(
                    onTap: () {},
                    padding: const EdgeInsets.all(10),
                    child: const Iconify(
                      MaterialSymbols.music_note_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Music",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  BlueGradientContainer(
                    onTap: () {},
                    padding: const EdgeInsets.all(10),
                    child: const Iconify(
                      Majesticons.sound_up,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Sound",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          const SettingsNav(
            text: "Account",
            screen: ProfileSettingScreen(),
          ),
          const SettingsNav(
            text: "Payout Bank Details",
            screen: BankWithdrawalSettings(),
          ),
          const SettingsNav(text: "Privacy & Security"),
          const SettingsNav(text: "Help & Support"),
          const SettingsNav(text: "About"),
        ]),
      ),
    );
  }
}
