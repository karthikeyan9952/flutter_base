import 'package:flutter/material.dart';
import 'package:flutter_base/constants/keys.dart';
import 'package:fluttertoast/fluttertoast.dart';

showMessage(String message, {Duration duration = const Duration(seconds: 1)}) {
  return snackbarKey.currentState?.showSnackBar(
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
