import 'package:flutter/material.dart';
import 'package:flutter_base/theme/palette.dart';

class DropDownCustom<T> extends DropdownButtonFormField<T> {
  /// Optional text that describes the input field.
  final String? labelText;

  /// A [DropDownCustom] that contains a [DropdownButton].
  ///
  /// This is a convenience widget that wraps a [DropdownButton] widget in a
  /// [FormField].
  ///
  /// A [Form] ancestor is not required. The [Form] allows one to
  /// save, reset, or validate multiple fields at once. To use without a [Form],
  /// pass a [GlobalKey] to the constructor and use [GlobalKey.currentState] to
  /// save or reset the form field.
  DropDownCustom(
      {super.key,
      super.value,
      required super.items,
      required super.onChanged,
      this.labelText})
      : super(
            validator: (input) =>
                value == null ? "Please select $labelText" : null,
            decoration: InputDecoration(
                filled: false,
                labelStyle: const TextStyle().copyWith(color: Colors.grey),
                labelText: labelText,
                // contentPadding: const EdgeInsets.all(12),
                border: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Palette.primary),
                ),
                errorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Palette.danger),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Palette.muted),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Palette.primary),
                )));
}
