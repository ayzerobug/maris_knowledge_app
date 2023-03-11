import 'package:flutter/material.dart';

class HomeGreetings extends StatelessWidget {
  const HomeGreetings(
    this.username, {
    super.key,
  });
  final String username;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi, Welcome Back",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          "RICHARD DANIEL ANTHONY",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
