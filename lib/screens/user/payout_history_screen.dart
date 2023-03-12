import 'package:flutter/material.dart';
import 'package:maris_knowledge_app/custom_widgets/app_layout.dart';
import 'package:maris_knowledge_app/models/payout_history_group.dart';

import '../../custom_widgets/history_group.dart';
import '../../custom_widgets/history_item.dart';
import '../../models/payout_history.dart';

class PayoutHistoryScreen extends StatelessWidget {
  PayoutHistoryScreen({super.key});

  final List<PayoutHistoryGroup> groups = [
    PayoutHistoryGroup(title: "Today", items: [
      PayoutHistory(
        id: "52005325",
        description: "Balance Topup of 100 naira",
        amount: "\$ 35",
        date: "24-07-2022",
        isPaid: true,
      ),
      PayoutHistory(
        id: "52005325",
        description: "Balance Topup of 100 naira",
        amount: "\$ 35",
        date: "24-07-2022",
        isPaid: false,
      )
    ]),
    PayoutHistoryGroup(title: "Last Week", items: [
      PayoutHistory(
        id: "52005325",
        description: "Balance Topup of 100 naira",
        amount: "\$ 35",
        date: "24-07-2022",
        isPaid: true,
      ),
      PayoutHistory(
        id: "52005325",
        description: "Balance Topup of 100 naira",
        amount: "\$ 35",
        date: "24-07-2022",
        isPaid: true,
      )
    ])
  ];

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      appBar: AppBar(
        title: const Center(
          child: Text("Payout History"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: groups.map((group) => HistoryGroup(group: group)).toList(),
        ),
      ),
    );
  }
}
