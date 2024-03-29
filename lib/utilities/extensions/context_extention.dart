import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double widthFull() => MediaQuery.of(this).size.width;
  double heightFull() => MediaQuery.of(this).size.height;
  double widthHalf() => MediaQuery.of(this).size.width / 2;
  double heightHalf() => MediaQuery.of(this).size.height / 2;
  double widthQuarter() => MediaQuery.of(this).size.width / 3;
  double heightQuarter() => MediaQuery.of(this).size.height / 3;
}
