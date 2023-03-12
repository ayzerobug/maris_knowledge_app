import 'dart:ui';

import 'package:flutter/material.dart';

import 'app-bg.dart';

class AppLayout extends StatelessWidget {
  const AppLayout(
      {super.key,
      this.appBar,
      this.body,
      this.drawer,
      this.padding = const EdgeInsets.all(20),
      this.scaffoldKey});
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? drawer;
  final EdgeInsetsGeometry padding;
  final Key? scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBg(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.transparent,
        drawer: drawer,
        appBar: appBar,
        body: SafeArea(
          child: Padding(
            padding: padding,
            child: body ?? const SizedBox(),
          ),
        ),
      ),
    );
  }
}
