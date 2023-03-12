import 'package:flutter/material.dart';
import 'package:outlined_text/outlined_text.dart' as outlined_text_package;

class OutlinedText extends StatelessWidget {
  const OutlinedText(this.text, {super.key, this.style, this.outlineColor});
  final String text;
  final TextStyle? style;
  final Color? outlineColor;

  @override
  Widget build(BuildContext context) {
    return outlined_text_package.OutlinedText(
      text: Text(text, style: style),
      strokes: [
        outlined_text_package.OutlinedTextStroke(color: outlineColor, width: 4),
      ],
    );
  }
}
