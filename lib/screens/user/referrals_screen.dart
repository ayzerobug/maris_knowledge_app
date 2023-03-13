import 'package:flutter/material.dart';

import '../../custom_widgets/app_layout.dart';
import '../../custom_widgets/blue_gradient_container.dart';

class ReferralScreen extends StatelessWidget {
  ReferralScreen({super.key});

  final List<String> referrals = [
    "Adebiyi Abosede",
    "Adeleke Olamide",
    "Ayomide Micheal",
    "Emmanuel Olamide"
  ];

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      appBar: AppBar(
        title: const Center(
          child: Text("My Referrals"),
        ),
      ),
      padding: EdgeInsets.zero,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(children: [
          Image.asset(
            "assets/images/team.png",
            width: MediaQuery.of(context).size.width * 0.5,
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
                children: referrals.map(
                  (e) {
                    final id = referrals.indexOf(e) + 1;
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: BlueGradientContainer(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              id.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(fontSize: 20),
                            ),
                            const SizedBox(width: 50),
                            Text(
                              e.toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
