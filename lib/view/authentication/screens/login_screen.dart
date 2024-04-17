import 'package:flutter/material.dart';
import 'package:flutter_base/common/widgets/buttons.dart';
import 'package:flutter_base/common/widgets/text.dart';
import 'package:flutter_base/constants/size_unit.dart';
import 'package:flutter_base/services/route/app_route.dart';
import 'package:flutter_base/services/route/routes.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonSecondary(onPressed: onLogin, label: "Login"),
        const SizedBox(height: SizeUnit.xlg),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextCustom("Don't have an account?"),
            const SizedBox(width: SizeUnit.sm),
            InkWell(
                onTap: onSignUp,
                child: const TextCustom("SignUp", fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    )));
  }

  void onLogin() {
    isLoggingIn = true;
    context.go(Routes.home);
  }

  void onSignUp() {
    context.replace(Routes.signUp);
  }
}
