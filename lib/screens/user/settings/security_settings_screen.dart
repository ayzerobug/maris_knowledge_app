import 'package:flutter/material.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:maris_knowledge_app/custom_widgets/app_layout.dart';

import '../../../custom_widgets/green_gradient_container.dart';
import '../../../custom_widgets/input_field.dart';

class SecuritySettingsScreen extends StatelessWidget {
  const SecuritySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      padding: EdgeInsets.zero,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text("Cancel"),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                Text(
                  "Security Settings",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: 20),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff110A37), Color(0xff341147)]),
              ),
              child: Column(
                children: [
                  const InputField(
                    label: "New Password",
                    leadingIcon: Ph.lock_bold,
                    isPassword: true,
                  ),
                  GreenGradientContainer(
                    onTap: () {},
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: const Text("Update Password"),
                  ),
                  const SizedBox(height: 50),
                  const InputField(
                    label: "Withdrawal PIN",
                    leadingIcon: Ph.lock_bold,
                    isPassword: true,
                  ),
                  GreenGradientContainer(
                    onTap: () {},
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: const Text("Update PIN"),
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
