import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<bool> showAlertDialog(
  BuildContext context, {
  required String title,
  required String desctiption,
  String? positiveLabel,
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
