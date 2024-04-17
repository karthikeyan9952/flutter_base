import 'package:flutter_base/theme/Palette.dart';
import 'package:flutter/material.dart';

class LoadingOverlay extends StatelessWidget {
  /// The value of loading status
  final bool isLoading;

  /// The primary content of the [LoadingOverlay] under the loading.
  ///
  /// Typically a [Scaffold] widget.
  final Widget child;

  /// Creates loading overlay top of the screen. All actions are disabled in the app while loading
  const LoadingOverlay(
      {super.key, required this.isLoading, required this.child});

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Stack(children: [
            child,
            Scaffold(
                backgroundColor: Palette.dark.withOpacity(.25),
                body: Center(
                  child: Container(
                      alignment: Alignment.center,
                      height: 62,
                      width: 62,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const CircularProgressIndicator()),
                )),
          ])
        : child;
  }
}
