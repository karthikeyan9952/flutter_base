import 'package:flutter/material.dart';

class DividerCustom extends Divider {
  /// The lineColor to use when painting the line of [Divider]
  /// The default color is `Colors.grey.shade300`
  final Color? lineColor;

  /// Creates a customized [Divider]
  DividerCustom({super.key, this.lineColor})
      : super(color: lineColor ?? Colors.grey.shade300);
}
