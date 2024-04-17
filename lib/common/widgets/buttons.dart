import 'package:flutter_base/common/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/theme/palette.dart';

import 'loaders.dart';

class ButtonPrimary extends ElevatedButton {
  /// Creates a Material Design elevated button.
  ButtonPrimary(
      {super.key,
      required void Function()? onPressed,
      required String label,
      bool isLoading = false})
      : super(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: isLoading
                  ? const Loader()
                  : TextCustom(
                      label,
                      size: 16,
                      fontWeight: FontWeight.bold,
                    ),
            ),
            onPressed: isLoading ? () {} : onPressed);
}

class ButtonSecondary extends FilledButton {
  /// Creates a Material Design filled button.
  ButtonSecondary(
      {super.key,
      required void Function()? onPressed,
      required String label,
      bool isLoading = false})
      : super(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: isLoading
                  ? const Loader()
                  : TextCustom(
                      label,
                      size: 16,
                      fontWeight: FontWeight.bold,
                      color: Palette.dark,
                    ),
            ),
            onPressed: isLoading ? () {} : onPressed);
}
