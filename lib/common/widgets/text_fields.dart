import 'package:flutter_base/constants/keys.dart';
import 'package:flutter_base/theme/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget {
  /// Controls the text being edited.
  final TextEditingController controller;

  /// A Text that describes the input field.
  final String label;

  /// The type of information for which to optimize the text input control.
  final TextInputType? keyboardType;

  /// The isOptional specifies the input [TextFormField] is optional or required
  final bool isOptional;

  /// Enable or disable the [TextFormField]
  final bool? enabled;

  /// Validates the input with custom logic
  final String? Function(String? input)? validator;

  /// Creates a customized [FormField] that contains a [TextField].
  const TextFormFieldCustom({
    super.key,
    required this.controller,
    required this.label,
    this.keyboardType,
    this.isOptional = false,
    this.enabled,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      enabled: enabled,
      validator: (input) {
        // Checks if the field is optional and input is empty
        if (!isOptional && (input == null || input.isEmpty)) {
          return "The $label is required";
        }
        // If the validator is not null custom validation logic to be performed
        if (validator != null) {
          return validator!(input);
        }
        // No validation errors
        return null;
      },
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelStyle: const TextStyle(color: Colors.grey, fontSize: 14),
          labelText: label,
          contentPadding: const EdgeInsets.all(12),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Palette.primary),
              borderRadius: BorderRadius.circular(10)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Palette.danger),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Palette.muted),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Palette.primary),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}

class TextFieldAuth extends StatelessWidget {
  /// Controls the text being edited.
  final TextEditingController controller;

  /// An icon that appears before the [prefix] or [prefixText] and before the editable part of the text field, within the decoration's container.
  ///
  /// Typically a `[IconData]`
  final IconData? prefix;

  /// Text that suggests what sort of input the field accepts.
  final String? hint;

  /// Show or hide the text specifically used on password fields.
  final bool obscured;

  /// Automatically opens keyboard when the [TextFieldAuth] is shown.
  final bool autoFoucs;

  /// An icon that appears after the editable part of the text field and after the [suffix] or [suffixText], within the decoration's container.
  final Widget? suffix;

  /// The type of information for which to optimize the text input control.
  final TextInputType? textInputType;

  /// A Text that describes the input field.
  final String label;

  /// Validates the input with custom logic
  final String? Function(String? input)? validator;

  /// The maximum allowed characters length of [TextFieldAuth]
  final int? length;

  /// Creates a customized [FormField] that contains a [TextField]. Specifiaclly used for authentications
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
                  .copyWith(onSurface: Palette.primary)),
          child: TextFormField(
            controller: controller,
            autofocus: autoFoucs,
            keyboardType: textInputType,
            obscureText: obscured,
            validator: (input) {
              // Checks if the input is empty
              if (input == null || input.isEmpty) {
                return "The $label is required";
              }
              // If the validator is not null custom validation logic to be performed
              if (validator != null) {
                return validator!(input);
              }
              // No validation errors
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
                hintStyle: TextStyle(color: Palette.muted),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Palette.primary),
                    borderRadius: BorderRadius.circular(10)),
                errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Palette.danger),
                    borderRadius: BorderRadius.circular(10)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Palette.muted),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Palette.primary),
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
      ],
    );
  }
}
