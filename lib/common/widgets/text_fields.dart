import 'package:flutter_base/constants/keys.dart';
import 'package:flutter_base/theme/pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget {
  const TextFormFieldCustom({
    super.key,
    required this.controller,
    required this.label,
    this.keyboardType,
    this.isOptional = false,
    this.enabled,
  });
  final TextEditingController controller;
  final String label;
  final TextInputType? keyboardType;
  final bool? isOptional;
  final bool? enabled;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      enabled: enabled,
      validator: (value) {
        if (!isOptional! && controller.text.isEmpty) {
          return "Please provide the necessary details";
        }
        return null;
      },
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelStyle: const TextStyle(color: Colors.grey, fontSize: 14),
          labelText: label,
          contentPadding: const EdgeInsets.all(12),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Pallete.primary),
              borderRadius: BorderRadius.circular(10)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Pallete.danger),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Pallete.muted),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Pallete.primary),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}

class TextFieldAuth extends StatelessWidget {
  final TextEditingController controller;
  final IconData? prefix;
  final String? hint;
  final bool obscured, autoFoucs;
  final Widget? suffix;
  final TextInputType? textInputType;
  final String label;
  final String? Function(String? input)? validator;
  final int? length;
  const TextFieldAuth(
      {super.key,
      required this.controller,
      this.prefix,
      this.hint,
      required this.obscured,
      this.suffix,
      this.textInputType = TextInputType.emailAddress,
      this.autoFoucs = false,
      required this.label,
      this.validator,
      this.length});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Theme(
          data: ThemeData(
              colorScheme: Theme.of(mainKey.currentContext!)
                  .colorScheme
                  .copyWith(onSurface: Pallete.primary)),
          child: TextFormField(
            controller: controller,
            autofocus: autoFoucs,
            keyboardType: textInputType,
            obscureText: obscured,
            validator: validator ??
                (value) {
                  if (controller.text.isEmpty) {
                    return "Please enter the ${label.toLowerCase()}";
                  }
                  return null;
                },
            maxLength: length,
            decoration: InputDecoration(
                labelText: label,
                contentPadding: const EdgeInsets.all(10),
                fillColor: Colors.white,
                prefixIcon: Icon(
                  prefix ?? CupertinoIcons.at,
                ),
                suffixIcon: suffix,
                filled: true,
                counterText: "",
                hintText: hint,
                labelStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                hintStyle: TextStyle(color: Pallete.muted),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Pallete.primary),
                    borderRadius: BorderRadius.circular(10)),
                errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Pallete.danger),
                    borderRadius: BorderRadius.circular(10)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Pallete.muted),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Pallete.primary),
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
      ],
    );
  }
}
