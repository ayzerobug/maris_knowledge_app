import 'package:flutter/material.dart';

class HomeCarouselItem extends StatelessWidget {
  const HomeCarouselItem(
      {super.key,
      this.topLeft = const SizedBox(),
      this.topRight = const SizedBox(),
      this.bottomLeft = const SizedBox(),
      this.bottomRight = const SizedBox(),
      required this.value,
      required this.currency});
  final Widget topLeft;
  final Widget topRight;
  final Widget bottomLeft;
  final Widget bottomRight;
  final String value;
  final String currency;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: MediaQuery.of(context).size.width * 0.85,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff0099DB), Color(0xff009C89)],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [topLeft, topRight],
          ),
          RichText(
            text: TextSpan(
              text: value,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: " $currency",
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [bottomLeft, bottomRight],
          )
        ],
      ),
    );
  }
}
