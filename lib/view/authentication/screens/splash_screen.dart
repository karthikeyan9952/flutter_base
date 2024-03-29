import 'package:flutter/material.dart';
import 'package:flutter_base/common/widgets/text.dart';
import 'package:flutter_base/services/route/app_route.dart';
import 'package:flutter_base/services/route/routes.dart';
import 'package:flutter_base/theme/pallete.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => initialize());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Pallete.primary,
      body: Center(
          child: TextCustom(
        "Splash",
        size: 40,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      )),
    );
  }

  Future<void> initialize() async {
    await Future.delayed(const Duration(seconds: 2));
    isInitialized = true;
    if (!mounted) return;
    context.go(Routes.login);
  }
}
