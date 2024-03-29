// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:io';

import 'package:flutter_base/constants/app_strings.dart';
import 'package:flutter_base/constants/keys.dart';
import 'package:flutter_base/providers/providers.dart';
import 'package:flutter_base/services/api/api_helper.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class APIService {
  APIHelper helper = APIHelper();
  Duration timeout = const Duration(seconds: 30);

  http.Response timeoutResponse = http.Response(
      jsonEncode({"status": "error", "message": "Request timeout"}), 408);

  static const String baseURL = AppStrings.apiUrl;
  Map<String, String> headers = {
    "Accept": "application/json",
    "Authorization": "Bearer ${authProvider.token}"
  };

  Future post(BuildContext context, String endPoint,
      {required Map<String, String> body}) async {
    http.Response response = await http
        .post(Uri.parse(baseURL + endPoint), headers: headers, body: body)
        .timeout(
          timeout,
          onTimeout: () => timeoutResponse,
        );
    logger.i(baseURL + endPoint);
    logger.i(body);
    logger.w(response.body);
    return helper.httpErrorHandle(response: response, context: context);
  }

  Future get(BuildContext context, String endPoint,
      {Map<String, String>? queryParams}) async {
    http.Response response = await http
        .get(
            Uri.parse(baseURL + endPoint).replace(queryParameters: queryParams),
            headers: headers)
        .timeout(
          timeout,
          onTimeout: () => timeoutResponse,
        );

    logger.i(baseURL + endPoint);
    queryParams != null ? logger.i(queryParams) : null;
    logger.w(response.body);
    return helper.httpErrorHandle(response: response, context: context);
  }

  Future multipartFormDataPost(String endPoint, File? file,
      {Map<String, String> params = const {},
      required String filename,
      String method = "POST"}) async {
    Uri uri = Uri.parse("$baseURL$endPoint");
    logger.i(uri);
    logger.i(params);
    http.MultipartRequest request = http.MultipartRequest(method, uri);
    request.headers.addAll(headers);
    request.fields.addAll(params);
    logger.i(request.fields);
    if (file != null) {
      http.MultipartFile multipartFile =
          await http.MultipartFile.fromPath(filename, file.path);
      request.files.add(multipartFile);
    }
    http.StreamedResponse response = await request.send();
    try {
      dynamic value = await response.stream.transform(utf8.decoder).join();
      logger.i(value);
      value = jsonDecode(value);
      return value;
    } catch (e) {
      logger.e(e);
      return {'status': 'Failed', 'message': 'Something went wrong!'};
    }
  }

  bool hasError(Map responseBody) {
    if (responseBody.isEmpty) {
      return true;
    }
    bool hasStatus = responseBody.keys.any((key) => key == "status");
    if (!hasStatus) {
      return false;
    } else {
      if (responseBody["status"] == "error") {
        return true;
      } else {
        return false;
      }
    }
  }
}
