import 'package:flutter_base/common/widgets/text.dart';
import 'package:flutter_base/theme/pallete.dart';
import 'package:flutter_base/utilities/extensions/context_extention.dart';
import 'package:flutter/material.dart';

import 'loaders.dart';

class SocialButton extends StatelessWidget {
  final String label;
  final String imgPath;
  final double? width;
  final VoidCallback? voidCallback;
  final Color? color;
  const SocialButton(
      {super.key,
      required this.label,
      this.width,
      this.voidCallback,
      this.color,
      required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: width ?? context.widthFull(),
      child: ElevatedButton(
          onPressed: voidCallback,
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      side: BorderSide(color: Pallete.muted),
                      borderRadius: BorderRadius.circular(10))),
              backgroundColor: MaterialStateProperty.all(Colors.white),
              shadowColor: MaterialStateProperty.all(Colors.transparent)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imgPath, height: 24),
              const SizedBox(width: 12),
              BtnText(label, size: 15, color: Pallete.dark),
            ],
          )),
    );
  }
}

class ButtonPrimary extends ElevatedButton {
  ButtonPrimary(
      {super.key,
      required VoidCallback onPressed,
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

class ButtonSecondary extends OutlinedButton {
  ButtonSecondary(
      {super.key,
      required VoidCallback onPressed,
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
