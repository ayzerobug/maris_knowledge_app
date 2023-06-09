import 'package:flutter/material.dart';

import 'misc/constants.dart';
import 'screens/auth/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppConstants.textColor),
          bodyMedium: TextStyle(color: AppConstants.textColor),
          bodySmall: TextStyle(color: AppConstants.textColor),
          headlineLarge: TextStyle(
              color: AppConstants.textColor, fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(
              color: AppConstants.textColor, fontWeight: FontWeight.bold),
          headlineSmall: TextStyle(
              color: AppConstants.textColor, fontWeight: FontWeight.bold),
        ),
        appBarTheme: const AppBarTheme(color: Colors.transparent, elevation: 0),
        iconTheme: const IconThemeData(color: Colors.white),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const RegisterScreen(),
    );
  }
}
