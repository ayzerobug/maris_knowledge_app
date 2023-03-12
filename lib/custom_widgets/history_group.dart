import 'package:flutter/material.dart';

import '../models/payout_history_group.dart';
import 'history_item.dart';

class HistoryGroup extends StatelessWidget {
  const HistoryGroup({super.key, required this.group});
  final PayoutHistoryGroup group;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
            Text(group.title),
            const SizedBox(height: 10),
          ] +
          group.items.map((item) => HistoryItem(history: item)).toList(),
    );
  }
}
