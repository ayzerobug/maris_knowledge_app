import 'package:flutter/material.dart';

import '../models/payout_history.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key, required this.history});
  final PayoutHistory history;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color.fromARGB(11, 255, 255, 255),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    history.description,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "ID: ${history.id}",
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  history.amount,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: const Color(0xff04C300), fontSize: 16),
                ),
                Text(
                  history.date,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                )
              ],
            )
          ]),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Status: ${history.isPaid ? 'Paid' : 'Unpaid'}",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: history.isPaid ? const Color(0xff04C300) : Colors.red),
          )
        ],
      ),
    );
  }
}
