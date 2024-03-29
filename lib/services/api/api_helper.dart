import 'dart:convert';

import 'package:flutter_base/constants/keys.dart';
import 'package:flutter_base/services/route/app_route.dart';
import 'package:flutter_base/services/route/routes.dart';
import 'package:flutter_base/services/storage/storage_constants.dart';
import 'package:flutter_base/utilities/message.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class APIHelper {
  Map httpErrorHandle(
      {required http.Response response, required BuildContext context}) {
    Map data = {};
    switch (response.statusCode) {
      case 200:
        data = jsonDecode(response.body);
        return data;
      case 201:
        data = jsonDecode(response.body);
        return data;
      case 400:
        showMessage(context, jsonDecode(response.body)['message'],
            duration: const Duration(seconds: 3));
        return data;
      case 500:
        showMessage(context, jsonDecode(response.body)['message'],
            duration: const Duration(seconds: 3));
        return data;
      case 401:
        showMessage(context, "Unauthorized");
        handleUnauthorized(context);
        return data;
      default:
        showMessage(context, jsonDecode(response.body)['message'],
            duration: const Duration(seconds: 3));
        return data;
    }
  }

  handleUnauthorized(BuildContext context) {
    return secureStorage
        .delete(key: StorageConstants.token)
        .then((value) => router.go(Routes.login));
  }
}
