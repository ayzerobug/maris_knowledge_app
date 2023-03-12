import 'package:flutter/material.dart';

import 'blue_gradient_container.dart';

class QuizOption extends StatelessWidget {
  const QuizOption(
      {super.key, required this.id, required this.value, required this.onTap});
  final String id;
  final String value;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: BlueGradientContainer(
        onTap: onTap,
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        child: Row(
          children: [
            Text(
              "$id:",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: const Color(0xffFFC700), fontSize: 20),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              value,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
