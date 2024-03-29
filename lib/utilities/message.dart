import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showMessage(BuildContext context, String message,
    {Duration duration = const Duration(seconds: 1)}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: duration,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(14),
      content: Text(message),
    ),
  );
}

showToastMessage(String message) {
  return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      fontSize: 16.0);
}
