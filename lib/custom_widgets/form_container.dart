import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  const FormContainer(
      {super.key,
      required this.child,
      required this.title,
      required this.description});
  final Widget child;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        padding: const EdgeInsets.all(30),
        margin: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff110A37), Color(0xff341147)],
          ),
          border: Border.all(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 40,
            ),
            child,
          ],
        ),
      ),
    );
  }
}
