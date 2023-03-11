import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';

class InputField extends StatefulWidget {
  InputField(
      {super.key,
      this.leadingIcon,
      this.controller,
      this.keyboardType,
      this.hintText = 'Enter text here',
      this.isPassword = false,
      this.onChange});
  final String? leadingIcon;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? hintText;
  final void Function(String text)? onChange;
  final bool isPassword;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  final FocusNode focusNode = FocusNode();

  bool isFocused = false;
  late bool obsureText;

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      setState(() {
        isFocused = focusNode.hasFocus;
      });
    });
    obsureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: isFocused ? Colors.blue : Colors.transparent,
          width: 2.0,
        ),
      ),
      child: Row(
        children: [
          if (widget.leadingIcon != null)
            Iconify(
              widget.leadingIcon!,
              size: 20,
            ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Focus(
              focusNode: focusNode,
              child: TextField(
                obscureText: obsureText,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.hintText,
                ),
                keyboardType: widget.keyboardType,
                onChanged: widget.onChange,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.black,
                    ),
              ),
            ),
          ),
          if (widget.isPassword)
            InkWell(
              onTap: () {
                setState(() {
                  obsureText = !obsureText;
                });
              },
              child: Iconify(
                obsureText ? Ph.eye_light : Ph.eye_slash,
                size: 20,
              ),
            )
        ],
      ),
    );
  }
}
