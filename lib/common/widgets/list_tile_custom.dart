import 'package:flutter_base/common/widgets/text.dart';
import 'package:flutter/material.dart';

class CustomListTile extends ListTile {
  CustomListTile(
      {super.key,
      required String icon,
      required String label,
      required VoidCallback onTap,
      bool enableTrailing = true,
      Widget trailing =
          const Icon(Icons.arrow_right_sharp, color: Colors.grey)})
      : super(
          onTap: onTap,
          leading: Image.asset(icon, height: 24, width: 24),
          title: TextCustom(
            label,
            size: 16,
          ),
          trailing: enableTrailing ? trailing : const SizedBox.shrink(),
          contentPadding: EdgeInsets.zero,
        );
}
