import 'package:flutter/material.dart';
import 'package:iconify_flutter/icons/uil.dart';

import '../../../custom_widgets/app_layout.dart';
import '../../../custom_widgets/green_gradient_container.dart';
import '../../../custom_widgets/input_field.dart';

class BankWithdrawalSettings extends StatelessWidget {
  const BankWithdrawalSettings({super.key});

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
                  "Bank Withdrawal Settings",
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
                    label: "Bank Name",
                    leadingIcon: Uil.circle,
                  ),
                  const SizedBox(height: 20),
                  const InputField(
                    label: "Account Name",
                    leadingIcon: Uil.circle,
                  ),
                  const SizedBox(height: 20),
                  const InputField(
                    label: "Account Number",
                    leadingIcon: Uil.circle,
                  ),
                  const SizedBox(height: 40),
                  GreenGradientContainer(
                    onTap: () {},
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text("Update Bank Details",
                        style: Theme.of(context).textTheme.bodyLarge),
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
