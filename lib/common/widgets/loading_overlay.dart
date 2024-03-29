import 'package:flutter_base/theme/pallete.dart';
import 'package:flutter/material.dart';

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay(
      {super.key, required this.isLoading, required this.child});
  final bool isLoading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Stack(children: [
            child,
            Scaffold(
                backgroundColor: Pallete.dark.withOpacity(.25),
                body: Center(
                  child: Container(
                      alignment: Alignment.center,
                      height: 62,
                      width: 62,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const CircularProgressIndicator()),
                ))
          ])
        : child;
  }
}
