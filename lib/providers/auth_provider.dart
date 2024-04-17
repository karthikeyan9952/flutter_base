import 'package:flutter/material.dart';

/// [AuthProvider] provides a state management for authentication
class AuthProvider extends ChangeNotifier {
  // Brearer token private member
  String _token = "";

  /// Current user's Bearer token
  String get token => _token;

  /// A setter for Current user's Bearer token
  set token(String newToken) {
    _token = newToken;
    notifyListeners();
  }

  bool _isLoading = false;

  /// Specifies the loading status of an Authentication
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
