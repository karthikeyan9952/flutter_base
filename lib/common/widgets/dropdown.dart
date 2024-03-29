import 'package:flutter/material.dart';
import 'package:flutter_base/theme/pallete.dart';

class DropDownCustom<T> extends DropdownButtonFormField {
  DropDownCustom(
      {super.key,
      Object? super.value,
      required List<DropdownMenuItem<Object>>? super.items,
      required void Function(Object?)? super.onChanged,
      String? labelText})
      : super(
            validator: (input) =>
                value == null ? "Please select $labelText" : null,
            decoration: InputDecoration(
                labelText: "$labelText (Required) *",
                contentPadding: const EdgeInsets.all(12),
                labelStyle: const TextStyle(color: Colors.grey, fontSize: 14),
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
                    borderRadius: BorderRadius.circular(10))));
}
