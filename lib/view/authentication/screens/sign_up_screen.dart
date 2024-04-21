import 'package:flutter/material.dart';
import 'package:flutter_base/common/widgets/buttons.dart';
import 'package:flutter_base/common/widgets/text.dart';
import 'package:flutter_base/constants/size_unit.dart';
import 'package:flutter_base/services/route/app_router.dart';
import 'package:flutter_base/services/route/routes.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonPrimary(onPressed: onSignUp, label: "SignUp"),
        const SizedBox(height: SizeUnit.xlg),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextCustom("Already have an account?"),
            const SizedBox(width: SizeUnit.sm),
            InkWell(
                onTap: onLogin,
                child: const TextCustom("Login", fontWeight: FontWeight.bold))
          ],
        ),
      ],
    )));
  }

  void onSignUp() {
    isLoggedIn = true;
    context.go(Routes.home);
  }

  void onLogin() {
    context.replace(Routes.login);
  }
}
