import 'package:flutter/material.dart';
import 'package:maris_knowledge_app/screens/user/quiz_screen.dart';
import 'package:transparent_route/transparent_route.dart';

import '../../custom_widgets/app_layout.dart';
import '../../custom_widgets/containers/red_gradient_container.dart';
import '../../custom_widgets/green_gradient_container.dart';
import '../../custom_widgets/level_stat.dart';

class QuizStartScreen extends StatefulWidget {
  const QuizStartScreen({super.key});

  @override
  State<QuizStartScreen> createState() => _QuizStartScreenState();
}

class _QuizStartScreenState extends State<QuizStartScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Image.asset("assets/images/shield.png"),
        ),
        GreenGradientContainer(
          onTap: () {
            pushScreen(context, const QuizScreen());
          },
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              "Play",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        RedGradientContainer(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              "Back",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ),
      ],
    ));
  }
}
