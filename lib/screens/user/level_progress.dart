import 'package:flutter/material.dart';
import 'package:maris_knowledge_app/custom_widgets/app_layout.dart';

import '../../custom_widgets/containers/red_gradient_container.dart';
import '../../custom_widgets/green_gradient_container.dart';
import '../../custom_widgets/level_stat.dart';

class LevelProgress extends StatefulWidget {
  const LevelProgress({super.key, required this.progress});
  final int progress;

  @override
  State<LevelProgress> createState() => _LevelProgressState();
}

class _LevelProgressState extends State<LevelProgress> {
  late Color bgColor;
  late String progressDescription;

  @override
  void initState() {
    super.initState();
    resolveAttrs();
  }

  void resolveAttrs() {
    bgColor = widget.progress < 100
        ? const Color(0xffFFB800)
        : const Color(0xff00A807);
    if (widget.progress < 100) {
      var diff = 100 - widget.progress;
      progressDescription = "You need $diff% to move to the next level";
    } else {
      progressDescription = "Congratulations";
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      body: Column(
        children: [
          const LevelStat(),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Level 2",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            "Gurara Waterfalls",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Container(
            padding: const EdgeInsets.all(30),
            margin: const EdgeInsets.symmetric(vertical: 50),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/progress-vectors.png"),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
              child: Container(
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  "${widget.progress}%",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              progressDescription,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          if (widget.progress < 100)
            GreenGradientContainer(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  "Play",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
          const SizedBox(
            height: 20,
          ),
          RedGradientContainer(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                "End Game",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
