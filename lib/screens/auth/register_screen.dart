import 'package:flutter/material.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/mi.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:maris_knowledge_app/custom_widgets/input_field.dart';

import '../../custom_widgets/app_button.dart';
import '../../custom_widgets/app_layout.dart';
import '../../custom_widgets/form_container.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      body: Center(
        child: IntrinsicHeight(
          child: SingleChildScrollView(
            child: Column(
              children: [
                FormContainer(
                  title: "Join Us!",
                  description: "Create an account",
                  child: Column(
                    children: [
                      const InputField(
                        leadingIcon: Mi.user,
                        hintText: "Enter Full Name",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const InputField(
                        leadingIcon: Mi.user,
                        hintText: "Enter Username",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const InputField(
                        leadingIcon: Uil.envelope_alt,
                        hintText: "Enter Email",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const InputField(
                        leadingIcon: Ic.round_phone,
                        hintText: "Enter Phone Number",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const InputField(
                        leadingIcon: Ph.lock_key_bold,
                        hintText: "Enter Password",
                        keyboardType: TextInputType.emailAddress,
                        isPassword: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RichText(
                        text: TextSpan(
                          children: const [
                            TextSpan(
                                text: 'By Signing up, you agree with our '),
                            TextSpan(
                              text: 'Terms & Conditions ',
                              style: TextStyle(color: Colors.blue),
                            ),
                            TextSpan(text: 'and '),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const AppButton(text: "Create Account")
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: const [
                      TextSpan(text: 'Already have an account?'),
                      TextSpan(
                        text: ' Login',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                    style: Theme.of(context).textTheme.bodyMedium,
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
