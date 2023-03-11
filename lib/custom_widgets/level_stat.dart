import 'package:flutter/material.dart';
import 'package:iconify_flutter/icons/heroicons.dart';
import 'package:iconify_flutter/icons/icon_park_solid.dart';
import 'package:iconify_flutter/icons/majesticons.dart';

import 'counter.dart';

class LevelStat extends StatelessWidget {
  const LevelStat({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Counter(
          color: Color(0xffFD4B4B),
          value: "5",
          iconData: Majesticons.heart,
        ),
        Counter(
          color: Color(0xffFFFFFF),
          value: "5",
          iconData: Heroicons.scale_solid,
        ),
        Counter(
          color: Color(0xff51B6FF),
          value: "5",
          iconData: IconParkSolid.alarm_clock,
        ),
      ],
    );
  }
}
