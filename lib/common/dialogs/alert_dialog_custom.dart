import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Show a alert dialog that returns the boolean value.
/// If Yes pressed it returns `true` otherwise returns `false`
Future<bool> showAlertDialog(
  BuildContext context, {
  /// The title of the dialog is displayed in a large font at the top of the dialog.
  required String title,

  /// The content of the dialog is displayed in the center of the dialog in a lighter font.
  required String desctiption,

  /// The Postitive label of the dialog is displayed inside a right action button.
  /// The default value is `Yes`
  String? positiveLabel,

  /// The Postitive label of the dialog is displayed inside a left action button.
  /// The default value is `No`
  String? negativeLabel,
}) async =>
    await showDialog<bool>(
      context: context,
      builder: (BuildContext context) => AlertDialogCustom(
        title: title,
        desctiption: desctiption,
        positiveLabel: positiveLabel,
        negativeLabel: negativeLabel,
      ),
    ) ??
    false;

class AlertDialogCustom extends StatelessWidget {
  const AlertDialogCustom(
      {super.key,
      required this.title,
      required this.desctiption,
      this.positiveLabel,
      this.negativeLabel});
  final String title;
  final String desctiption;
  final String? positiveLabel;
  final String? negativeLabel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(desctiption),
      actions: <Widget>[
        TextButton(
          onPressed: () => context.pop<bool>(false),
          child: Text(negativeLabel ?? 'No'),
        ),
        TextButton(
          onPressed: () => context.pop<bool>(true),
          child: Text(positiveLabel ?? 'Yes'),
        ),
      ],
    );
  }
}
