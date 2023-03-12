import 'package:flutter/material.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:transparent_route/transparent_route.dart';

import '../../custom_widgets/app_layout.dart';
import '../../custom_widgets/form_container.dart';
import '../../custom_widgets/green_gradient_container.dart';
import '../../custom_widgets/input_field.dart';
import '../user/home_screen.dart';
import 'register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      body: Center(
        child: IntrinsicHeight(
          child: SingleChildScrollView(
            child: Column(
              children: [
                FormContainer(
                  title: "Hi, Welcome Back",
                  description: "Login to your account",
                  child: Column(
                    children: [
                      const InputField(
                        leadingIcon: Uil.envelope_alt,
                        hintText: "Enter Email",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const InputField(
                        leadingIcon: Ph.lock_key_bold,
                        hintText: "Enter Password",
                        keyboardType: TextInputType.emailAddress,
                        isPassword: true,
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          textAlign: TextAlign.end,
                        ),
                      ),
                      const SizedBox(height: 15),
                      GreenGradientContainer(
                        onTap: () => replaceScreen(context, const HomeScreen()),
                        child: Text(
                          "Login",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontSize: 18),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () =>
                            replaceScreen(context, const RegisterScreen()),
                        child: RichText(
                          text: TextSpan(
                            children: const [
                              TextSpan(text: "Don't have an account"),
                              TextSpan(
                                text: ' Sign up',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/google.png",
                                  width: 30),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Login with Google",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: Colors.black),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
