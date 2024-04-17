import 'package:flutter_base/common/widgets/text.dart';
import 'package:flutter/material.dart';

class CustomListTile extends ListTile {
  /// A custom icon's asset path
  final String icon;

  /// The text to display as the title label.
  final String titleText;

  /// Show the trailing widget (optional). Default value is `true`
  final bool enableTrailing;

  /// A widget to display after the title. It can be hide by [enableTrailing]
  final Widget trailingWidget;

  /// Creates a customized [ListTile] wiget
  CustomListTile(
      {super.key,
      required this.icon,
      required this.titleText,
      super.onTap,
      this.enableTrailing = true,
      this.trailingWidget =
          const Icon(Icons.arrow_right_sharp, color: Colors.grey)})
      : super(
          leading: Image.asset(icon, height: 24, width: 24),
          title: TextCustom(
            titleText,
            size: 16,
          ),
          trailing: enableTrailing ? trailingWidget : const SizedBox.shrink(),
          contentPadding: EdgeInsets.zero,
        );
}
