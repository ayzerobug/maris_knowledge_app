import 'package:flutter/material.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/mi.dart';
import 'package:iconify_flutter/icons/uil.dart';

import '../../../custom_widgets/app_layout.dart';
import '../../../custom_widgets/green_gradient_container.dart';
import '../../../custom_widgets/input_field.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({super.key});

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
                const SizedBox(height: 30),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text("Cancel"),
                ),
                const SizedBox(height: 30),
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
              ],
            ),
          ),
          const SizedBox(height: 30),
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
                    label: "Fullname",
                    leadingIcon: Mi.user,
                  ),
                  const InputField(
                    label: "Email",
                    leadingIcon: Uil.envelope_alt,
                  ),
                  const InputField(
                    label: "Phone Number",
                    leadingIcon: Ic.round_local_phone,
                  ),
                  const InputField(label: "Year Of Birth"),
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
