import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/tabler.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:iconify_flutter/icons/zondicons.dart';
import 'package:maris_knowledge_app/custom_widgets/app_layout.dart';
import 'package:maris_knowledge_app/custom_widgets/blue_gradient_container.dart';
import 'package:maris_knowledge_app/screens/user/level_progress.dart';
import 'package:transparent_route/transparent_route.dart';

import '../../custom_widgets/outlined_text.dart';
import '../../custom_widgets/quiz_option.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      appBar: AppBar(
        leading: Transform.scale(
          scale: 0.5,
          child: InkWell(
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: const Color(0xff1DA711),
                border: Border.all(color: Colors.white, width: 2),
                shape: BoxShape.circle,
              ),
              child: const Iconify(
                Zondicons.pause,
                size: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
        title: const Text("Level 2"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Iconify(Tabler.menu_2, color: Colors.white),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage("assets/images/stopwatch.png"),
                    width: 35,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  OutlinedText(
                    '6',
                    style: Theme.of(context).textTheme.headlineSmall,
                    outlineColor: Colors.blue,
                  ),
                ],
              ),
              OutlinedText(
                '1/10',
                style: Theme.of(context).textTheme.headlineSmall,
                outlineColor: Colors.blue,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          BlueGradientContainer(
            onTap: () {},
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
            child: Text(
              "The term 'seperation of powers' simply implies what?",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          QuizOption(
            onTap: () => pushScreen(context, const LevelProgress(progress: 30)),
            id: "A",
            value: "Checks and balances",
          ),
          QuizOption(
            onTap: () =>
                pushScreen(context, const LevelProgress(progress: 100)),
            id: "C",
            value: "Checks and standard",
          ),
          QuizOption(
            onTap: () => pushScreen(context, const LevelProgress(progress: 50)),
            id: "D",
            value: "Checks and progress",
          ),
          QuizOption(
            onTap: () => pushScreen(context, const LevelProgress(progress: 80)),
            id: "E",
            value: "Checks and Open",
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BlueGradientContainer(
                onTap: () {},
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                child: Text(
                  "50:50",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: 18),
                ),
              ),
              BlueGradientContainer(
                onTap: () {},
                padding: const EdgeInsets.all(10),
                child: const Iconify(
                  Uil.history,
                  color: Colors.white,
                  size: 40,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
