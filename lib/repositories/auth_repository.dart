import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_base/providers/providers.dart';
import 'package:flutter_base/services/api/api_services.dart';

/// AuthRepository contains authentication related functionalities
class AuthRepository {
  /// Initialize the [APIService]
  APIService api = APIService();

  /// Performs a login API call.\
  /// The returned [Future] resolves to the status by API response.\
  /// The `email` and `password` fields are required.
  Future<bool> login(BuildContext context,
      {required String email, required String password}) async {
    /// Turning on the loading
    authProvider.isLoading = true;

    /// Store a api response body as a Map
    Map responseBody =
        await api.post("login", body: {"email": email, "password": password});

    /// Checks if response body has any errors from backend
    if (api.hasError(responseBody)) {
      /// Turning off the loading
      authProvider.isLoading = false;

      /// Reutns the function with failed status(false)
      return false;
    }

    /// Saves the data
    await save(responseBody);

    /// Turning off the loading
    authProvider.isLoading = false;

    /// Reutns the function with success status(true)
    return true;
  }

  /// Saves the credentials(i.e Token) to the local storage
  Future<void> save(Map data) async {
    /// Data saving logic
  }
}
