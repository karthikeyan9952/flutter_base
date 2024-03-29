import 'package:flutter/cupertino.dart';
import 'package:flutter_base/constants/keys.dart';
import 'package:flutter_base/providers/providers.dart';
import 'package:flutter_base/services/api/api_services.dart';

class AuthRepository {
  APIService api = APIService();

  Future<bool> login(
    BuildContext context, {
    required String email,
    required String password,
  }) async {
    authProvider.isLoading = true;
    Map responseBody = await api
        .post(context, "login", body: {"email": email, "password": password});
    logger.i(responseBody);
    if (api.hasError(responseBody)) {
      authProvider.isLoading = false;
      return false;
    }

    await save(responseBody);
    authProvider.isLoading = false;

    return true;
  }

  save(Map data) async {}
}
