import 'package:flutter/material.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:maris_knowledge_app/custom_widgets/input_field.dart';

import '../../custom_widgets/app_button.dart';
import '../../custom_widgets/app_layout.dart';
import '../../custom_widgets/form_container.dart';

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
                      AppButton(
                        onTap: () {},
                        text: "Login",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
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
